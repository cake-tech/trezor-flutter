package io.trezor.trezor_usb_transport

import android.app.PendingIntent
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.hardware.usb.UsbManager
import android.os.Build
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler


// Convert Android USBDevice to JS compatible WebUSBDevice
typealias WebUSBDevice = Map<String, Any?>

const val ACTION_USB_PERMISSION = "io.trezor.trezor_usb_transport.USB_PERMISSION"
const val LOG_TAG = "TrezorFlutterUsb"

const val INTERFACE_INDEX = 0
const val CHUNK_SIZE = 64

// Protocol v1 constants
const val PROTOCOL_V1_MAGIC_BYTE: Byte =
    0x3F // '?' character - first byte of v1 messages and chunk header

// Protocol v2 (THP) constants
const val THP_CONTINUATION_PACKET: Byte = 0x80.toByte() // Continuation packet marker for THP
const val THP_HEADER_SIZE = 3 // control_byte + 2 bytes channel

/** TrezorUsbTransportPlugin */
class TrezorUsbTransportPlugin :
    FlutterPlugin,
    MethodCallHandler {

    private lateinit var channel: MethodChannel
    private lateinit var context: Context
    private lateinit var usbManager: UsbManager
    private lateinit var trezorManager: TrezorUsbManager

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "trezor_usb_transport")
        channel.setMethodCallHandler(this)

        context = flutterPluginBinding.getApplicationContext()
        usbManager = context.getSystemService(Context.USB_SERVICE) as UsbManager
        trezorManager = TrezorUsbManager(usbManager)
    }

    override fun onMethodCall(
        call: MethodCall,
        result: MethodChannel.Result
    ) {

        when (call.method) {
            "open" -> open(call, result)
            "transferOut" -> transferOut(call, result)
            "transferIn" -> transferIn(call, result)
            "close" -> close(call, result)
            "requestPermission" -> requestPermission(call, result)
            "getDevices" -> getDevices(call, result)
            else -> result.notImplemented()
        }
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        trezorManager.close()
    }

    private fun open(call: MethodCall, result: MethodChannel.Result) {
        val identifier: String? = call.argument("identifier")
        try {
            trezorManager.open(identifier)
            result.success(true)
        } catch (ex: TrezorException) {
            trezorManager.gracefullyReset()
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }

    private fun close(call: MethodCall, result: MethodChannel.Result) {
        try {
            trezorManager.close()
        } catch (ex: Exception) {
            trezorManager.gracefullyReset()
        }

        result.success(true)
    }

    private fun transferIn(call: MethodCall, result: MethodChannel.Result) {
        val length: Int? = call.argument("length")
        try {
            val data: ByteArray = trezorManager.transferIn(length!!)
            result.success(data)
        } catch (ex: TrezorException) {
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }

    private fun transferOut(call: MethodCall, result: MethodChannel.Result) {
        val data: ByteArray? = call.argument("data")
        try {
            val length: Int = trezorManager.transferOut(data!!)
            result.success(length)
        } catch (ex: TrezorException) {
            result.error(ex.getErrorCode(), ex.message, null)
        }
    }

    private fun getDevices(call: MethodCall, result: MethodChannel.Result) {
        result.success(trezorManager.getDevices())
    }

    private fun requestPermission(call: MethodCall, result: MethodChannel.Result) {
        val identifier: String? = call.argument("identifier")
        val device = usbManager.deviceList[identifier]
        if (device == null) {
            result.success(false)
            return
        }

        if (usbManager.hasPermission(device)) {
            result.success(true)
            return
        }

        val receiver: BroadcastReceiver = object : BroadcastReceiver() {
            override fun onReceive(context: Context, intent: Intent) {
                context.unregisterReceiver(this)
                val granted = intent.getBooleanExtra(UsbManager.EXTRA_PERMISSION_GRANTED, false)
                result.success(granted)
            }
        }

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            context.registerReceiver(
                receiver,
                IntentFilter(ACTION_USB_PERMISSION),
                Context.RECEIVER_EXPORTED
            )
        } else {
            context.registerReceiver(receiver, IntentFilter(ACTION_USB_PERMISSION))
        }

        usbManager.requestPermission(device, getPendingIntent(context))
    }


    private fun getPendingIntent(context: Context?): PendingIntent? {
        val flags: Int = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        } else {
            PendingIntent.FLAG_UPDATE_CURRENT
        }

        return PendingIntent.getBroadcast(context, 0, Intent(ACTION_USB_PERMISSION), flags)
    }
}
