import 'package:flutter/material.dart';
import 'package:ui_components/model/device/device_model.dart';
import 'package:ui_components/utils/table_utils.dart';
import 'package:ui_components/view/custom_table_cell.dart';

List<TableRow> getDeviceDetails({required DeviceModel device, required int columnCount}) {
  return [
    TableUtils.ensureColumnsMatch(
      expectedColumns: columnCount,
      tableRow: TableRow(
        children: [
          CustomTableCell(label: 'address'.toUpperCase(), isBold: true),
          CustomTableCell(label: device.address ?? "?", canCopy: true),
        ],
      ),
    ),
    TableUtils.ensureColumnsMatch(
      expectedColumns: columnCount,
      tableRow: TableRow(children: [
        CustomTableCell(label: 'device ID'.toUpperCase(), isBold: true),
        CustomTableCell(label: device.id ?? "?"),
      ]),
    )
  ];
}
