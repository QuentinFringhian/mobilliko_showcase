import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/modalParts/banco_modal_rules.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/modalParts/banco_modal_terms.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/settingsPart/banco_setting_modal_button.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/settingsPart/banco_setting_quit_button.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/settingsPart/banco_setting_sound_button.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/styles.dart';

/// A dialog displaying various Banco game settings and options.
///
/// This dialog provides access to game rules, sound settings, terms, and a quit button.
/// It is styled with a transparent background and customizable margin, padding, and decoration.
/// Each setting option is separated by a gap defined by [kBancoSettingModalDialogElementsGap].
class BancoSettingDialogs extends StatelessWidget {
  /// Creates a [BancoSettingDialogs].
  const BancoSettingDialogs({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        margin: kBancoSettingModalDialogMarginStyle,
        padding: kBancoSettingModalDialogPadding,
        decoration: kBancoSettingModalDialogDecoration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            BancoSettingModalButton(
              text: translate('games.banco.game_rules'),
              child: const BancoModalRules(),
            ),
            kBancoSettingModalDialogElementsGap,
            const BancoSettingSoundButton(),
            kBancoSettingModalDialogElementsGap,
            BancoSettingModalButton(
              text: translate('games.banco.rules'),
              child: const BancoModalTerms(),
            ),
            kBancoSettingModalDialogElementsGap,
            const BancoSettingQuitButton(),
          ],
        ),
      ),
    );
  }
}
