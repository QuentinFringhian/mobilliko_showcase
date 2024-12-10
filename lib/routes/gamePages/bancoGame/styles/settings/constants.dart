import 'package:flutter/material.dart';

/// --- Paddings --- ///

/// Padding for modal dialog layout.
const EdgeInsets kBancoSettingModalDialogPadding =
    EdgeInsets.fromLTRB(12, 7, 12, 9);

/// Horizontal padding between elements inside modal dialogs.
const double kBancoSettingModalDialogElementsHorizontalPadding = 12;

/// Padding applied to all settings buttons.
const double kBancoSettingButtonAllPadding = 4;

/// --- Margins --- ///

/// Horizontal margin for modal dialogs.
const double kBancoSettingModalDialogHorizontalMargin = 4;

/// --- Sizes --- ///

/// Height of buttons inside modal dialogs.
const double kBancoSettingModalButtonHeightSize = 39;

/// Size of the sound button in modal dialogs.
const Size kBancoSettingModalSoundButtonSize = Size(94, 45);

/// Size of the sound logo in modal dialogs.
const Size kBancoSettingModalSoundLogoSize = Size(33, 29);

/// Size of the settings button icon.
const double kBancoSettingButtonImageSize = 18;

/// Size of the disabled settings button icon.
const double kBancoSettingButtonDisabledImageSize = 26;

/// --- Colors --- ///

/// Background color for modal buttons.
const Color kBancoSettingModalButtonColor = Color(0xffb6c7dc);

/// Background color for the quit button in modal dialogs.
const Color kBancoSettingModalQuitButtonColor = Color(0xffc12827);

/// Background color for the sound button in modal dialogs.
const Color kBancoSettingModalSoundButtonColor = Color(0xff3d8ae2);

/// Background color for general settings buttons with reduced opacity.
Color kBancoSettingButtonBackgroundColor = Colors.white.withOpacity(0.75);

/// Shadow color for general settings buttons.
Color kBancoSettingButtonShadowColor = Colors.black.withOpacity(0.5);

/// Color for disabled settings buttons.
Color kBancoSettingButtonDisabledColor = Colors.black.withOpacity(0.8);

/// --- Sources --- ///

/// Image asset for the sound logo inside modal dialogs.
const ImageProvider kBancoSettingModalSoundLogoImage =
    AssetImage('assets/images/banco/banco_sound_icon.png');

/// Image asset for the settings button.
const ImageProvider kBancoSettingButtonImage =
    AssetImage('assets/images/banco/banco_settings_button.png');

/// Image asset for the disabled settings button.
const ImageProvider kBancoSettingButtonDisabledImage =
    AssetImage('assets/images/banco/banco_disabled.png');

/// --- Radii --- ///

/// Border radius for modal buttons.
const double kBancoSettingModalButtonBorderRadius = 4;

/// Border radius for modal dialog containers.
const double kBancoSettingModalDialogBorderRadius = 6;

/// Border radius for general settings buttons.
const double kBancoSettingButtonBorderRadius = 90;

/// --- Opacities --- ///

/// Opacity for disabled buttons.
const double kBancoSettingButtonDisabledOpacity = 0.5;

/// Opacity for enabled buttons.
const double kBancoSettingButtonEnabledOpacity = 1;

/// --- Font Sizes --- ///

/// Font size for text inside modal buttons.
const double kBancoSettingModalButtonFontSize = 13;

/// --- Positions --- ///

/// Position offset for settings buttons.
const EdgeInsets kBancoSettingButtonPosition =
    EdgeInsets.only(right: 5, top: 33);
