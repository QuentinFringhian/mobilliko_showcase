import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/flat_button_types.dart';

/// A custom flat button used in the Banco game.
///
/// The button displays an image and text, and its appearance is determined
/// by the [FlatButtonType] passed in [style]. It can also be disabled.
class BancoFlatButton extends StatelessWidget {
  /// Creates a [BancoFlatButton] widget.
  ///
  /// [text], [style], and [onTap] are required. The button can also be
  /// optionally disabled.
  const BancoFlatButton({
    required this.text,
    required this.style,
    required this.onTap,
    super.key,
    this.disabled = false,
  });

  /// The text displayed on the button.
  final String text;

  /// Whether the button is disabled.
  ///
  /// When disabled, a color filter is applied to the button to give it
  /// a disabled appearance, and the button becomes non-interactive.
  final bool disabled;

  /// The style of the button, which determines the button's background image.
  ///
  /// This is specified using [FlatButtonType], which includes a path to the image.
  final FlatButtonType style;

  /// The callback function that is triggered when the button is tapped.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: ColorFiltered(
        colorFilter: ColorFilter.mode(
          disabled ? kBancoFlatButtonDisabledFilterColor : Colors.transparent,
          BlendMode.srcATop,
        ),
        child: Container(
          width: kBancoFlatButtonSize.width,
          height: kBancoFlatButtonSize.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(style.path),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: kBancoFlatButtonPaddingStyle,
              child: Text(
                text.toUpperCase(),
                style: kBancoFlatButtonTextStyle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
