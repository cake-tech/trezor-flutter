const v1MessageMagicHeaderByte = 0x3F;
const v1MessageHeaderByte = 0x23;
const v1HeaderSize = 1 + 1 + 1 + 2 + 4; // MESSAGE_MAGIC_HEADER_BYTE + MESSAGE_HEADER_BYTE + MESSAGE_HEADER_BYTE + messageType + dataLength
