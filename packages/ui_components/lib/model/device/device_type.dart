enum DeviceType {
  smokeDetector(labelName: 'Smoke detector', assetPath: 'assets/icons/smoke_detector.svg'),
  waterLeakDetector(labelName: 'Water leak detector', assetPath: 'assets/icons/water_leak_detector.svg');

  const DeviceType({required this.labelName, required this.assetPath});

  final String labelName;
  final String assetPath;

  @override
  String toString() => labelName;
}
