import 'package:flutter/material.dart';
import 'package:ui_components/gen/assets.gen.dart';
import 'package:ui_components/model/device/device_model.dart';
import 'package:ui_components/model/list_entity.dart';
import 'package:ui_components/model/person_model.dart';
import 'package:ui_components/utils/table_utils.dart';
import 'package:ui_components/view/device/device_details.dart';
import 'package:ui_components/view/device/device_information.dart';
import 'package:ui_components/view/person/person_details.dart';
import 'package:ui_components/view/person/person_information.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key,
      this.padding = const EdgeInsets.all(defaultItemSpace),
      required this.data,
      this.bottomActionsStart,
      this.bottomActionsEnd,
      this.columnCount = 5})
      : super(key: key);

  final EdgeInsetsGeometry padding;
  final ListEntity data;
  final List<Widget>? bottomActionsStart;
  final List<Widget>? bottomActionsEnd;
  final int columnCount;

  static const defaultItemSpace = 10.0;

  TableRow _getTopRow({required ListEntity data, required int columnCount}) {
    switch (data.runtimeType) {
      case PersonModel:
        return getPersonInformation(person: data as PersonModel, columnCount: columnCount);
      // DEVICE
      default:
        return getDeviceInformation(device: data as DeviceModel, columnCount: columnCount);
    }
  }

  List<TableRow> _getDetails({required ListEntity data, required int columnCount}) {
    switch (data.runtimeType) {
      case PersonModel:
        return getPersonDetails(person: data as PersonModel, columnCount: columnCount);
      // DEVICE
      default:
        return getDeviceDetails(device: data as DeviceModel, columnCount: columnCount);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: padding,
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Table(
                      children: [
                        _getTopRow(data: data, columnCount: columnCount),
                        ensureColumnsMatch(
                          expectedColumns: columnCount,
                          tableRow: const TableRow(children: [SizedBox(height: defaultItemSpace)]),
                        ),
                        ..._getDetails(data: data, columnCount: columnCount),
                      ],
                    ),
                  ),
                  Assets.icons.up.svg()
                ],
              ),
              SizedBox(height: (bottomActionsStart != null || bottomActionsEnd != null) ? defaultItemSpace : 0),
              Row(
                children: [
                  Expanded(
                      child: Row(
                    children: bottomActionsStart
                            ?.map((e) => Padding(
                                  padding: const EdgeInsets.only(right: defaultItemSpace),
                                  child: e,
                                ))
                            .toList() ??
                        [const SizedBox()],
                  )),
                  Row(
                    children: bottomActionsEnd
                            ?.map((e) => Padding(
                                  padding: const EdgeInsets.only(left: defaultItemSpace),
                                  child: e,
                                ))
                            .toList() ??
                        [const SizedBox()],
                  )
                ],
              )
            ],
          )),
    );
  }
}
