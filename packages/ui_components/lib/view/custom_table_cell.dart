import 'package:flutter/material.dart';
import 'package:ui_components/gen/assets.gen.dart';

class CustomTableCell extends StatelessWidget {
  static const double spaceBetweenWidgets = 5.0;

  const CustomTableCell(
      {Key? key, this.canCopy = false, this.icon, required this.label, this.isError = false, this.isBold = false})
      : assert(!(isError == true && isBold == true)),
        super(key: key);

  final Widget? icon;
  final String label;
  final bool canCopy;
  final bool isError;
  final bool isBold;

  TextStyle? _getStyle(bool isError, bool isBold, BuildContext context) {
    if (isError) {
      return Theme.of(context).textTheme.bodyText2;
    }
    if (isBold) {
      return Theme.of(context).textTheme.headline2;
    }
    return Theme.of(context).textTheme.bodyText1;
  }

  List<Widget> _getItems(BuildContext context) {
    List<Widget> widgets = [];
    if (icon != null) {
      widgets.add(Padding(
        padding: const EdgeInsets.only(right: spaceBetweenWidgets),
        child: icon!,
      ));
    }
    widgets.add(Text(label, style: _getStyle(isError, isBold, context)));
    if (canCopy) {
      widgets.add(Padding(
        padding: const EdgeInsets.only(left: spaceBetweenWidgets),
        child: Assets.icons.copy.svg(),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _getItems(context),
    );
  }
}
