import 'package:flutter/material.dart';

class TableUtils {
  static TableRow ensureColumnsMatch({required int expectedColumns, required TableRow tableRow}) {
    if (tableRow.children == null) {
      throw Exception('no children within TableRow');
    }
    if (tableRow.children!.length > expectedColumns) {
      throw Exception('TableRow already too long');
    }
    if (tableRow.children?.length == expectedColumns) {
      return tableRow;
    }
    List<Widget> widgetList = [...tableRow.children!];
    for (var i = tableRow.children!.length; i < expectedColumns; i++) {
      widgetList.add(const SizedBox());
    }
    return TableRow(key: tableRow.key, decoration: tableRow.decoration, children: widgetList);
  }
}
