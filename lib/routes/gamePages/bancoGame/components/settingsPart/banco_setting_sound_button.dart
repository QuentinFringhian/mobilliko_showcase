import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/styles.dart';

// TODO(QuentinFringhian): Add the mute fonctionality when the sound systeme is implemented, https://github.com/blackfoot-makers/mobilliko_showcase/issues/21.

/// A button used for sound settings in the Banco game.
///
/// This button displays a sound logo and is designed to close the current dialog when tapped.
/// The button's appearance, including its size and decoration, is defined by constants.
///
/// Tapping the button triggers a dialog close action by popping the navigation stack.
class BancoSettingSoundButton extends StatelessWidget {
  /// Creates a [BancoSettingSoundButton].
  const BancoSettingSoundButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: kBancoSettingModalSoundButtonSize.width,
        height: kBancoSettingModalSoundButtonSize.height,
        decoration: kBancoSettingModalSoundButtonDecoration,
        child: Center(
          child: Image(
            image: kBancoSettingModalSoundLogoImage,
            width: kBancoSettingModalSoundLogoSize.width,
            height: kBancoSettingModalSoundLogoSize.height,
          ),
        ),
      ),
    );
  }
}
