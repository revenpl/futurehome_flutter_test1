import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ui_components/model/person_model.dart';
import 'package:ui_components/utils/table_utils.dart';
import 'package:ui_components/view/custom_table_cell.dart';

List<TableRow> getPersonDetails({required PersonModel person, required int columnCount}) {
  String getDate(int timeInMillis) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(timeInMillis);
    final DateFormat formatter = DateFormat('dd.MM.yyyy');
    return formatter.format(date);
  }

  return [
    ensureColumnsMatch(
      expectedColumns: columnCount,
      tableRow: TableRow(
        children: [
          CustomTableCell(
            label: 'Updated at'.toUpperCase(),
            isBold: true,
          ),
          CustomTableCell(
            label: getDate(person.updated ?? 0),
          ),
        ],
      ),
    )
  ];
}
