import 'package:flutter/material.dart';
import 'package:ui_components/device_details.dart';
import 'package:ui_components/model/device/device_model.dart';
import 'package:ui_components/model/list_entity.dart';
import 'package:ui_components/model/person_model.dart';
import 'package:ui_components/person_details.dart';

class CustomCard extends StatelessWidget {
  const CustomCard(
      {Key? key, this.padding = const EdgeInsets.all(10.0), required this.expandedIcon, required this.data})
      : super(key: key);

  final EdgeInsetsGeometry padding;
  final Widget expandedIcon;
  final ListEntity data;

  TableRow _getTopRow(ListEntity data) {
    switch (data.runtimeType) {
      case PersonModel:
        return getPersonDetails(data as PersonModel);
      // DEVICE
      default:
        return getDeviceDetails(data as DeviceModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: padding,
          child: Row(
            children: [
              Expanded(
                child: Table(
                  children: [
                    _getTopRow(data),
                  ],
                ),
              ),
              expandedIcon
            ],
          )),
    );
  }
}
