import 'package:flutter/material.dart';

TableRow ensureColumnsMatch(int expectedColumns, TableRow tableRow) {
  if (tableRow.children == null) {
    throw Exception('no children within tablerow');
  }
  if (tableRow.children?.length == expectedColumns) {
    return tableRow;
  }
  List<Widget> widgetList = [...tableRow.children!];
  for (var i = tableRow.children!.length; i >= expectedColumns; i++) {
    widgetList.add(const SizedBox());
  }
  return TableRow(key: tableRow.key, decoration: tableRow.decoration, children: widgetList);
}
