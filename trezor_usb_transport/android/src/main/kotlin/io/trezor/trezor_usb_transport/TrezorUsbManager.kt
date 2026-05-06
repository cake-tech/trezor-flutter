package io.trezor.trezor_usb_transport

import android.hardware.usb.*
import android.util.Log
import java.nio.ByteBuffer
import java.util.*
import java.util.concurrent.ConcurrentHashMap


class TrezorUsbManager {

    private val pendingRequests = ConcurrentHashMap<String, UsbRequest>()

    lateinit var usbManager: UsbManager

    private var device: UsbDevice? = null
    private var connection: UsbDeviceConnection? = null
    private var usbInterface: UsbInterface? = null
    private var usbEndpointReadIn: UsbEndpoint? = null
    private var usbEndpointWriteOut: UsbEndpoint? = null

    constructor(usbManager: UsbManager) {
        this.usbManager = usbManager
    }

    /**
     * Open a new usb connection with the specified device.
     *
     * @param identifier The id of the Ledger device.
     * @throws TrezorException If unable to open a connection with the device.
     */
    @Throws(TrezorException::class)
    fun open(identifier: String?) {
        val device: UsbDevice = usbManager.deviceList[identifier] ?: throw TrezorException(
            0x60000,
            "Device with identifier not found."
        )

        val connection: UsbDeviceConnection = usbManager.openDevice(device)

        // Check if the device has a configuration
        if (device.configurationCount <= 0) {
            throw TrezorException(0x60002, "No configurations found.")
        }

        val configuration: UsbConfiguration = device.getConfiguration(0)
        connection.setConfiguration(configuration)

        // Find the interface
        val usbInterface: UsbInterface = device.getInterface(INTERFACE_INDEX)

        // Claim the interface
        val claimed: Boolean = connection.claimInterface(usbInterface, true)
        if (!claimed) {
            throw TrezorException(0x60004, "Unable to claim USB interface.")
        }

        this.device = device
        this.connection = connection
        this.usbInterface = usbInterface
    }

    /**
     * Transfers data to a USB device, chunking if necessary.
     * Uses bulkTransfer for efficient sequential transfers.
     */
    fun transferOut(data: ByteArray): Int {
        val transferStartTime = System.nanoTime()

        val device = device ?: throw Exception("Device not opened")
        val usbConnection = connection ?: throw Exception("Not connected")
        val usbEndpoint = device.getInterface(INTERFACE_INDEX).getEndpoint(1)

        val chunks = createChunks(data)
        val totalChunks = chunks.size
        val bulkTimeout = 0 // 0 means no timeout

        for ((index, chunk) in chunks.withIndex()) {
            val bytesWritten =
                usbConnection.bulkTransfer(usbEndpoint, chunk, CHUNK_SIZE, bulkTimeout)

            if (bytesWritten < 0) {
                Log.e(
                    LOG_TAG,
                    "transferOut: FAILED chunk ${index + 1}/$totalChunks, error: $bytesWritten"
                )
                throw Exception("USB transfer failed for chunk ${index + 1}/$totalChunks, error: $bytesWritten")
            }

            if (bytesWritten != CHUNK_SIZE) {
                Log.e(
                    LOG_TAG,
                    "transferOut: FAILED chunk ${index + 1}/$totalChunks incomplete: $bytesWritten/$CHUNK_SIZE"
                )
                throw Exception("USB transfer incomplete for chunk ${index + 1}/$totalChunks: $bytesWritten/$CHUNK_SIZE bytes")
            }
        }

        val durationMs = (System.nanoTime() - transferStartTime) / 1_000_000.0
        Log.d(
            LOG_TAG,
            "transferOut: Done - ${data.size} bytes, $totalChunks chunks, %.1f ms".format(durationMs)
        )

        return data.size
    }

    fun transferIn(length: Int): ByteArray {
        Log.d(LOG_TAG, "Reading data from device ${device?.deviceName} (length: $length)")
        val device: UsbDevice = this.device ?: throw Exception("Device not opened")
        val usbConnection = connection ?: throw Exception("Not connected")
        val usbEndpoint = device.getInterface(INTERFACE_INDEX).getEndpoint(0)

        if (usbEndpoint == null) {
            Log.e(LOG_TAG, "Failed to get endpoint 0 for device ${device.deviceName}")
            throw Exception("Failed to get endpoint 0 for device ${device.deviceName}")
        }

        val buffer = ByteBuffer.allocate(length)
        val req = UsbRequest()
        req.initialize(usbConnection, usbEndpoint)
        req.queue(buffer)

        if (pendingRequests.putIfAbsent(device.deviceName, req) != null) {
            req.cancel()
            req.close()
            Log.e(LOG_TAG, "Transfer already in progress for device ${device.deviceName}")
            throw Exception("Transfer already in progress for device ${device.deviceName}")
        }

        val result = try {
            usbConnection.requestWait()
        } finally {
            pendingRequests.remove(device.deviceName)
            req.close()
        }

        if (result == null) {
            Log.e(LOG_TAG, "Failed to transfer data from device ${device.deviceName}")
            throw Exception("Failed to transfer data from device ${device.deviceName}")
        }

        Log.d(LOG_TAG, "Read data from device ${device.deviceName}: ${buffer.array().size} bytes ${buffer.array().contentToString()}")
        return buffer.array()
    }

    /**
     * Close the current connection with the Ledger device.
     */
    fun close() {
        if (connection == null) return

        // Release the interface
        usbEndpointReadIn = null
        usbEndpointWriteOut = null
        connection!!.releaseInterface(usbInterface)
        connection!!.close()
        usbInterface = null
        connection = null
        device = null

        pendingRequests.values.forEach { it.cancel() }
        pendingRequests.clear()
    }

    fun getDevices(): List<WebUSBDevice> = usbManager.deviceList.map { (deviceName, device) ->
        mapOf(
            "identifier" to deviceName,
            "deviceName" to device.deviceName,
            "deviceClass" to device.deviceClass,
            "deviceSubclass" to device.deviceSubclass,
            "deviceProtocol" to device.deviceProtocol,
            "vendorId" to device.vendorId,
            "productId" to device.productId,
            "version" to device.version,
            "manufacturerName" to device.manufacturerName,
            "productName" to device.productName,
        )
    }

    /**
     * Gracefully reset the device and connection.
     */
    fun gracefullyReset() {
        if (connection != null) {
            if (usbInterface != null) {
                connection!!.releaseInterface(usbInterface)
                usbInterface = null
            }

            connection!!.close()
            connection = null
        }

        device = null
        usbEndpointReadIn = null
        usbEndpointWriteOut = null
    }

    /**
     * Detects the protocol and returns the appropriate chunk header.
     * - Protocol v1: First byte is 0x3F ('?'), chunk header is 1 byte (0x3F)
     * - Protocol v2 (THP): First byte is a THP control byte, chunk header is 3 bytes (0x80 + channel)
     */
    private fun getChunkHeader(data: ByteArray): ByteArray {
        val firstByte = data[0]

        return if (firstByte == PROTOCOL_V1_MAGIC_BYTE) {
            // Protocol v1: chunk header is just 0x3F
            Log.d(LOG_TAG, "Detected protocol v1, using 1-byte chunk header")
            byteArrayOf(PROTOCOL_V1_MAGIC_BYTE)
        } else {
            // Protocol v2 (THP): chunk header is 0x80 + channel (bytes 1-2)
            // Message format: [control_byte, channel_high, channel_low, ...]
            if (data.size < THP_HEADER_SIZE) {
                Log.w(LOG_TAG, "Data too short for THP header, falling back to v1 header")
                byteArrayOf(PROTOCOL_V1_MAGIC_BYTE)
            } else {
                val channelHigh = data[1]
                val channelLow = data[2]
                Log.d(
                    LOG_TAG,
                    "Detected protocol v2 (THP), using 3-byte chunk header with channel ${channelHigh.toInt() and 0xFF}:${channelLow.toInt() and 0xFF}"
                )
                byteArrayOf(THP_CONTINUATION_PACKET, channelHigh, channelLow)
            }
        }
    }

    /**
     * Creates 64-byte chunks from data for USB transfer.
     *
     * Supports Protocol v1 (1-byte header) and Protocol v2/THP (3-byte header)
     */
    private fun createChunks(data: ByteArray): List<ByteArray> {
        val dataSize = data.size

        // Single chunk case - just pad to CHUNK_SIZE
        if (dataSize <= CHUNK_SIZE) {
            val chunk = ByteArray(CHUNK_SIZE)
            System.arraycopy(data, 0, chunk, 0, dataSize)
            return listOf(chunk)
        }

        // Multi-chunk case - detect protocol and build chunks
        val chunkHeader = getChunkHeader(data)
        val chunkHeaderSize = chunkHeader.size
        val chunkDataSize = CHUNK_SIZE - chunkHeaderSize

        val chunks = mutableListOf<ByteArray>()
        var dataOffset = 0

        // First chunk: no header, up to 64 bytes
        val firstChunk = ByteArray(CHUNK_SIZE)
        System.arraycopy(data, 0, firstChunk, 0, CHUNK_SIZE)
        chunks.add(firstChunk)
        dataOffset = CHUNK_SIZE

        // Subsequent chunks: header + data
        while (dataOffset < dataSize) {
            val chunk = ByteArray(CHUNK_SIZE)
            System.arraycopy(chunkHeader, 0, chunk, 0, chunkHeaderSize)
            val bytesToCopy = minOf(chunkDataSize, dataSize - dataOffset)
            System.arraycopy(data, dataOffset, chunk, chunkHeaderSize, bytesToCopy)
            chunks.add(chunk)
            dataOffset += bytesToCopy
        }

        return chunks
    }
}
