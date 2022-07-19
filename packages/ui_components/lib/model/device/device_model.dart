import 'package:ui_components/model/device/device_configuration_status.dart';
import 'package:ui_components/model/device/device_connection_status.dart';
import 'package:ui_components/model/device/device_security_status.dart';
import 'package:ui_components/model/device/device_type.dart';
import 'package:ui_components/model/list_entity.dart';

class DeviceModel extends ListEntity {
  final DeviceType type;
  final String? address;
  final String? id;
  final DeviceConfigurationStatus? configurationStatus;
  final DeviceConnectionStatus? connectionStatus;
  final DeviceSecurityStatus? securityStatus;

  DeviceModel(
      {required this.type,
      this.address,
      this.id,
      this.configurationStatus,
      this.connectionStatus,
      this.securityStatus});
}
