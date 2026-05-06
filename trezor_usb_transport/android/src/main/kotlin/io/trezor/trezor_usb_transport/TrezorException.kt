package io.trezor.trezor_usb_transport

class TrezorException(val errorCode: Int, errorMessage: String?) : Exception(errorMessage) {
    fun getErrorCode(): String = errorCode.toString()
}
