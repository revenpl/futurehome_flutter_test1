enum DeviceSecurityStatus {
  tampered(labelText: 'Tampered'),
  secure(labelText: 'Secured');

  const DeviceSecurityStatus({required this.labelText});

  final String labelText;
}
