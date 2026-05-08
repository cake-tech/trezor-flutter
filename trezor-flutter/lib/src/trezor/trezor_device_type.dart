enum TrezorDeviceType {
  modelOne(
    usbOnly: true,
    productIdMM: 0x00,
  ),
  modelT(
    usbOnly: true,
    productIdMM: 0x10,
  ),
  safe3(
    usbOnly: true,
    productIdMM: 0x10,
  ),
  safe5(
    usbOnly: true,
    productIdMM: 0x10,
  ),
  safe7(
    usbOnly: false,
    productIdMM: 0x80,
    serviceId: '8c000001-a59b-4d58-a9ad-073df69fa1b1',
    writeCharacteristicKey: '8c000002-a59b-4d58-a9ad-073df69fa1b1',
    notifyCharacteristicKey: '8c000003-a59b-4d58-a9ad-073df69fa1b1',
    pushCharacteristicKey: '8c000004-a59b-4d58-a9ad-073df69fa1b1',
    usesThp: true,
  );

  static List<TrezorDeviceType> get ble =>
      values.where((e) => !e.usbOnly).toList();

  const TrezorDeviceType({
    required this.usbOnly,
    required this.productIdMM,
    this.serviceId = "",
    this.writeCharacteristicKey = "",
    this.notifyCharacteristicKey = "",
    this.pushCharacteristicKey = "",
    this.usesThp = false,
  });

  final String serviceId;
  final String writeCharacteristicKey;
  final String notifyCharacteristicKey;
  final String pushCharacteristicKey;
  final bool usbOnly;
  final int productIdMM;
  final bool usesThp;
}
