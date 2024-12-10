import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/constants.dart';

// --- Paddings --- //

/// Padding for the settings button element.
const EdgeInsets kBancoSettingButtonPaddingStyle =
    EdgeInsets.all(kBancoSettingButtonAllPadding);

// --- Margins --- //

/// Margin style for modal dialogs in settings.
const EdgeInsets kBancoSettingModalDialogMarginStyle = EdgeInsets.symmetric(
  horizontal: kBancoSettingModalDialogHorizontalMargin,
);

// --- Gaps --- //

/// Gap between elements in modal dialogs.
const SizedBox kBancoSettingModalDialogElementsGap =
    SizedBox(height: kBancoSettingModalDialogElementsHorizontalPadding);

// --- Radii --- //

/// Border radius for the buttons in modal dialogs.
BorderRadiusGeometry kBancoSettingModalButtonBorderRadiusStyle =
    const BorderRadius.all(
  Radius.circular(kBancoSettingModalButtonBorderRadius),
);

/// Border radius for modal dialog boxes.
BorderRadiusGeometry kBancoSettingModalDialogBorderRadiusStyle =
    const BorderRadius.all(
  Radius.circular(kBancoSettingModalDialogBorderRadius),
);

/// Border radius for general buttons in the settings menu.
BorderRadiusGeometry kBancoSettingButtonBorderRadiusStyle =
    const BorderRadius.all(
  Radius.circular(kBancoSettingButtonBorderRadius),
);

// --- Decorations --- //

/// Decoration for buttons inside modal dialogs.
Decoration kBancoSettingModalButtonDecoration = BoxDecoration(
  color: kBancoSettingModalButtonColor,
  borderRadius: kBancoSettingModalButtonBorderRadiusStyle,
);

/// Decoration for the quit button in modal dialogs.
Decoration kBancoSettingModalQuitButtonDecoration = BoxDecoration(
  color: kBancoSettingModalQuitButtonColor,
  borderRadius: kBancoSettingModalButtonBorderRadiusStyle,
);

/// Decoration for the sound button in modal dialogs.
Decoration kBancoSettingModalSoundButtonDecoration = BoxDecoration(
  color: kBancoSettingModalSoundButtonColor,
  borderRadius: kBancoSettingModalButtonBorderRadiusStyle,
);

/// Decoration for the modal dialog container.
Decoration kBancoSettingModalDialogDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: kBancoSettingModalDialogBorderRadiusStyle,
);

/// Decoration for general buttons in the settings menu, with a shadow.
Decoration kBancoSettingButtonDecoration = BoxDecoration(
  color: kBancoSettingButtonBackgroundColor,
  borderRadius: kBancoSettingButtonBorderRadiusStyle,
  boxShadow: <BoxShadow>[
    BoxShadow(
      color: kBancoSettingButtonShadowColor,
      blurRadius: 1,
      offset: const Offset(0, 1),
    ),
  ],
);

// --- Text Styles --- //

/// Text style for buttons in modal dialogs.
TextStyle kBancoSettingModalButtonTextStyle = kBancoGlobalTextStyle.copyWith(
  color: Colors.white,
  fontSize: kBancoSettingModalButtonFontSize,
);
