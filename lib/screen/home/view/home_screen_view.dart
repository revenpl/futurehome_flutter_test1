import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:futurehome_test1/gen/assets.gen.dart';
import 'package:ui_components/model/device/device_configuration_status.dart';
import 'package:ui_components/model/device/device_connection_status.dart';
import 'package:ui_components/model/device/device_model.dart';
import 'package:ui_components/model/device/device_security_status.dart';
import 'package:ui_components/model/device/device_type.dart';
import 'package:ui_components/model/person_model.dart';
import 'package:ui_components/view/custom_button.dart';
import 'package:ui_components/view/custom_card.dart';
import 'package:ui_components/view/section_header.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  static const double screenPadding = 10.0;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(screenPadding),
      child: Header(),
    );
  }
}

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  static const double itemsSpacing = 10.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SectionHeader(
          leading: Assets.icons.stairs.svg(),
          title: Text(
            AppLocalizations.of(context)?.common_area ?? "?",
            style: Theme.of(context).textTheme.headline1,
          ),
          actions: [
            CustomButton(
              leading: Assets.icons.plus.svg(),
              label: Text(AppLocalizations.of(context)?.contact.toUpperCase() ?? "?"),
              onPressed: () {},
            ),
            CustomButton(
              leading: Assets.icons.plus.svg(),
              label: Text(AppLocalizations.of(context)?.room.toUpperCase() ?? "?"),
              onPressed: () {},
            ),
            CustomButton(
              leading: Assets.icons.plus.svg(),
              label: Text(AppLocalizations.of(context)?.device.toUpperCase() ?? "?"),
              onPressed: () {},
            ),
            CustomButton(
              label: Text("8 ${AppLocalizations.of(context)?.notes.toUpperCase() ?? "?"}"),
              ending: Assets.icons.forward.svg(),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: itemsSpacing),
        CustomCard(
          data: PersonModel(
              name: 'Board member', mail: 'mario@castle.com', phoneNumber: '+47 444 44 444', priority: 1, updated: 0),
          bottomActionsStart: [
            CustomButton(label: Text(AppLocalizations.of(context)?.edit.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.delete.toUpperCase() ?? "?")),
          ],
        ),
        const SizedBox(height: itemsSpacing),
        CustomCard(
          data: DeviceModel(
              address: '2_0',
              id: '1',
              type: DeviceType.smokeDetector,
              connectionStatus: DeviceConnectionStatus.offline,
              securityStatus: DeviceSecurityStatus.tampered,
              configurationStatus: DeviceConfigurationStatus.configured),
          bottomActionsStart: [
            CustomButton(label: Text(AppLocalizations.of(context)?.edit.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.unpair.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.delete.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.identify.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.ping.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.sensitivity.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.test_siren.toUpperCase() ?? "?")),
          ],
          bottomActionsEnd: [
            CustomButton(
                label: Text(AppLocalizations.of(context)?.timeline.toUpperCase() ?? "?"),
                ending: Assets.icons.forward.svg()),
            CustomButton(
                label: Text("8 ${(AppLocalizations.of(context)?.notes.toUpperCase() ?? "?")}"),
                ending: Assets.icons.forward.svg()),
          ],
        ),
        const SizedBox(height: itemsSpacing),
        CustomCard(
          data: DeviceModel(
              address: '2_0',
              id: '1',
              type: DeviceType.waterLeakDetector,
              connectionStatus: DeviceConnectionStatus.online,
              securityStatus: DeviceSecurityStatus.secure,
              configurationStatus: DeviceConfigurationStatus.configured),
          bottomActionsStart: [
            CustomButton(label: Text(AppLocalizations.of(context)?.edit.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.unpair.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.identify.toUpperCase() ?? "?")),
            CustomButton(label: Text(AppLocalizations.of(context)?.ping.toUpperCase() ?? "?")),
          ],
          bottomActionsEnd: [
            CustomButton(
                label: Text(AppLocalizations.of(context)?.timeline.toUpperCase() ?? "?"),
                ending: Assets.icons.forward.svg()),
            CustomButton(
                label: Text("8 ${(AppLocalizations.of(context)?.notes.toUpperCase() ?? "?")}"),
                ending: Assets.icons.forward.svg()),
          ],
        )
      ],
    );
  }
}
