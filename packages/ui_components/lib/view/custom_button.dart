import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key,
      this.leading,
      required this.label,
      this.ending,
      this.onPressed,
      this.height = defaultButtonHeight,
      this.padding = const EdgeInsets.fromLTRB(10, 0, 10, 1)})
      : super(key: key);

  static const defaultSpacing = 8.0;
  static const defaultButtonHeight = 24.0;

  final Widget? leading;
  final Widget label;
  final Widget? ending;
  final void Function()? onPressed;
  final double height;
  final EdgeInsets padding;

  List<Widget> get _widgets {
    List<Widget> widgetList = [];
    if (leading != null) {
      widgetList.addAll([leading!, const SizedBox(width: defaultSpacing)]);
    }
    widgetList.add(label);
    if (ending != null) {
      widgetList.addAll([const SizedBox(width: defaultSpacing), ending!]);
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextButton(
        onPressed: onPressed,
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: _widgets),
      ),
    );
  }
}
