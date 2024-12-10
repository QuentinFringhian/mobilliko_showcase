import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/styles.dart';

/// A button for quitting the Banco game.
///
/// This button is designed to navigate back to the home screen when tapped.
/// It displays a text label and uses a specific height and decoration for styling.
///
/// Tapping the button triggers a navigation action to the root of the app using [context.go('/')].
class BancoSettingQuitButton extends StatelessWidget {
  /// Creates a [BancoSettingQuitButton].
  const BancoSettingQuitButton({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go('/'),
      child: Container(
        height: kBancoSettingModalButtonHeightSize,
        decoration: kBancoSettingModalQuitButtonDecoration,
        child: Center(
          child: Text(
            translate('games.banco.quit'),
            style: kBancoSettingModalButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
