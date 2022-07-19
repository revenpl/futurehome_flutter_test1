enum DeviceConnectionStatus {
  online(labelText: 'Online'),
  offline(labelText: 'Offline');

  const DeviceConnectionStatus({required this.labelText});

  final String labelText;
}
