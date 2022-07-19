enum DeviceType {
  smokeDetector(labelText: 'Smoke detector', assetPath: 'packages/ui_components/assets/icons/smoke_detector.svg'),
  waterLeakDetector(labelText: 'Water leak detector', assetPath: 'packages/ui_components/assets/icons/water_leak_detector.svg');

  const DeviceType({required this.labelText, required this.assetPath});

  final String labelText;
  final String assetPath;

  @override
  String toString() => labelText;
}
