import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ui_components/gen/assets.gen.dart';
import 'package:ui_components/model/device/device_configuration_status.dart';
import 'package:ui_components/model/device/device_connection_status.dart';
import 'package:ui_components/model/device/device_model.dart';
import 'package:ui_components/model/device/device_security_status.dart';
import 'package:ui_components/utils/table_utils.dart';
import 'package:ui_components/view/custom_table_cell.dart';

TableRow getDeviceInformation({required DeviceModel device, required int columnCount}) {
  return ensureColumnsMatch(
    expectedColumns: columnCount,
    tableRow: TableRow(
      children: [
        CustomTableCell(label: device.type.labelText, icon: SvgPicture.asset(device.type.assetPath)),
        CustomTableCell(
            label: device.connectionStatus?.labelText ?? "?",
            icon: device.connectionStatus == DeviceConnectionStatus.online
                ? Assets.icons.check.svg()
                : Assets.icons.exclamation.svg(),
            isError: device.connectionStatus == DeviceConnectionStatus.online ? false : true),
        CustomTableCell(
            label: device.securityStatus?.labelText ?? "?",
            icon: device.securityStatus == DeviceSecurityStatus.secure
                ? Assets.icons.check.svg()
                : Assets.icons.exclamation.svg(),
            isError: device.securityStatus == DeviceSecurityStatus.secure ? false : true),
        CustomTableCell(
            label: device.configurationStatus?.labelText ?? "?",
            icon: device.configurationStatus == DeviceConfigurationStatus.configured
                ? Assets.icons.check.svg()
                : Assets.icons.exclamation.svg(),
            isError: device.configurationStatus == DeviceConfigurationStatus.configured ? false : true),
      ],
    ),
  );
}
