enum DeviceConfigurationStatus {
  configured(labelText: 'Configured'),
  notConfigured(labelText: 'Not configured');

  const DeviceConfigurationStatus({required this.labelText});

  final String labelText;
}
