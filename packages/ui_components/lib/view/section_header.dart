import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({Key? key, this.leading, this.actions, required this.title}) : super(key: key);

  final List<Widget>? actions;
  final Widget? leading;
  final Text title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              leading != null ? Padding(padding: const EdgeInsets.only(right: 7), child: leading) : const SizedBox(),
              title,
            ],
          ),
        ),
        Row(
          children: actions?.map((e) => Padding(padding: const EdgeInsets.only(left: 10.0), child: e)).toList() ?? [],
        )
      ],
    );
  }
}
