import 'package:flutter/material.dart';
import 'package:ui_components/gen/assets.gen.dart';
import 'package:ui_components/model/person_model.dart';
import 'package:ui_components/utils/table_utils.dart';
import 'package:ui_components/view/custom_table_cell.dart';

TableRow getPersonInformation({required PersonModel person, required int columnCount}) {
  return TableUtils.ensureColumnsMatch(
      expectedColumns: columnCount,
      tableRow: TableRow(
        children: [
          CustomTableCell(
            label: person.name ?? 'unknown',
            canCopy: true,
            icon: Assets.icons.boardMember.svg(),
          ),
          CustomTableCell(
            label: person.phoneNumber ?? "?",
            canCopy: true,
            icon: Assets.icons.phone.svg(),
          ),
          CustomTableCell(label: 'Priority ${person.priority}'),
          CustomTableCell(
            label: person.mail ?? "?",
            canCopy: true,
            icon: Assets.icons.email.svg(),
          ),
        ],
      ));
}
