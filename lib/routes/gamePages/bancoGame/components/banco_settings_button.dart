import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/settingsPart/banco_settings_dialog.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/styles.dart';
import 'package:provider/provider.dart';

/// A stateful widget that represents the settings button in the Banco app.
///
/// The button triggers a modal dialog to display settings when tapped.
/// It is disabled if a recent game gain exists or if the settings modal is currently shown.
class BancoSettingsButton extends StatefulWidget {
  /// Creates a [BancoSettingsButton] widget.
  const BancoSettingsButton({
    super.key,
  });

  @override
  State<BancoSettingsButton> createState() => _BancoSettingsButtonState();
}

class _BancoSettingsButtonState extends State<BancoSettingsButton> {
  bool _isModalShown = false;

  Future<void> _showBancoSettingModal() async {
    setState(() => _isModalShown = true);
    await showDialog(
      context: context,
      builder: (BuildContext context) => const BancoSettingDialogs(),
    );
    setState(() => _isModalShown = false);
  }

  @override
  Widget build(BuildContext context) {
    return _BancoSettingsButtonStyle(
      disabled:
          context.watch<GameGainprovider>().latestGain != null || _isModalShown,
      onTap: _showBancoSettingModal,
    );
  }
}

class _BancoSettingsButtonStyle extends StatelessWidget {
  const _BancoSettingsButtonStyle({
    required this.disabled,
    this.onTap,
  });

  final bool disabled;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: disabled
          ? kBancoSettingButtonDisabledOpacity
          : kBancoSettingButtonEnabledOpacity,
      child: Stack(
        children: <Widget>[
          GestureDetector(
            onTap: disabled ? null : onTap,
            child: Container(
              padding: kBancoSettingButtonPaddingStyle,
              decoration: kBancoSettingButtonDecoration,
              child: const Image(
                image: kBancoSettingButtonImage,
                height: kBancoSettingButtonImageSize,
                width: kBancoSettingButtonImageSize,
              ),
            ),
          ),
          if (disabled)
            Image(
              image: kBancoSettingButtonDisabledImage,
              height: kBancoSettingButtonDisabledImageSize,
              width: kBancoSettingButtonDisabledImageSize,
              color: kBancoSettingButtonDisabledColor,
            ),
        ],
      ),
    );
  }
}
