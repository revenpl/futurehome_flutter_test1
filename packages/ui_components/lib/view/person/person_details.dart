import 'package:flutter/material.dart';
import 'package:ui_components/extension/int_extension.dart';
import 'package:ui_components/model/person_model.dart';
import 'package:ui_components/utils/table_utils.dart';
import 'package:ui_components/view/custom_table_cell.dart';

List<TableRow> getPersonDetails({required PersonModel person, required int columnCount}) {
  return [
    TableUtils.ensureColumnsMatch(
      expectedColumns: columnCount,
      tableRow: TableRow(
        children: [
          CustomTableCell(
            label: 'Updated at'.toUpperCase(),
            isBold: true,
          ),
          CustomTableCell(
            label: (person.updated ?? 0).parseMillisToDate(),
          ),
        ],
      ),
    )
  ];
}
