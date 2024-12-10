import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_modal.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/styles.dart';

/// A button that opens a Banco game settings modal dialog.
///
/// This button displays a modal dialog with the provided [child] widget when tapped.
/// The appearance of the button, including its height and decoration, is styled using predefined constants.
///
/// Tapping the button triggers the display of a modal dialog with the [child] widget inside.
class BancoSettingModalButton extends StatelessWidget {
  /// Creates a [BancoSettingModalButton].
  ///
  /// Requires [child] to be displayed in the modal dialog and [text] as the button label.
  const BancoSettingModalButton({
    required this.child,
    required this.text,
    super.key,
  });

  /// The widget to be displayed inside the modal dialog.
  final Widget child;

  /// The text label shown on the button.
  final String text;

  void _showBancoSettingButtonModal(BuildContext context) {
    unawaited(
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return _BancoSettingModalButtonDialog(child: child);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showBancoSettingButtonModal(context),
      child: Container(
        height: kBancoSettingModalButtonHeightSize,
        decoration: kBancoSettingModalButtonDecoration,
        child: Center(
          child: Text(text, style: kBancoSettingModalButtonTextStyle),
        ),
      ),
    );
  }
}

class _BancoSettingModalButtonDialog extends StatelessWidget {
  const _BancoSettingModalButtonDialog({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Center(
        child: BancoModal(
          showOkButton: false,
          onClose: () => Navigator.pop(context),
          pages: <Widget>[child],
        ),
      ),
    );
  }
}
