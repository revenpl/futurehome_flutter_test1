import 'package:ui_components/model/device_configuration_status.dart';
import 'package:ui_components/model/device_connection_status.dart';
import 'package:ui_components/model/device_security_status.dart';
import 'package:ui_components/model/device_type.dart';
import 'package:ui_components/model/list_entity.dart';

class DeviceModel extends ListEntity {
  final DeviceType type;
  final String? address;
  final String? deviceId;
  final DeviceConfigurationStatus? deviceConfigurationStatus;
  final DeviceConnectionStatus? deviceConnectionStatus;
  final DeviceSecurityStatus? deviceSecurityStatus;

  DeviceModel(
      {required this.type,
      this.address,
      this.deviceId,
      this.deviceConfigurationStatus,
      this.deviceConnectionStatus,
      this.deviceSecurityStatus});
}
