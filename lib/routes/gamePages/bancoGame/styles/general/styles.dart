import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';

// --- Paddings --- //

/// Padding style for the Banco Flat Button, applied only to the bottom.
const EdgeInsetsGeometry kBancoFlatButtonPaddingStyle = EdgeInsets.only(
  bottom: kBancoFlatButtonBottomPadding,
);

/// Padding style for the Banco User Agreement, applied symmetrically to the horizontal sides.
const EdgeInsetsGeometry kBancoUserAgreementPadding =
    EdgeInsets.symmetric(horizontal: kBancoUserAgreementHorizontalPadding);

/// Padding style for the Banco Rules, applied symmetrically to the horizontal sides.
const EdgeInsetsGeometry kBancoRulesPadding =
    EdgeInsets.symmetric(horizontal: kBancoRulesHorizontalPadding);

/// Padding style for the Banco Modal, applied individually to the top, bottom, right, and left sides.
EdgeInsetsGeometry kBancoModalPaddingStyle = EdgeInsets.only(
  top: kBancoModalPadding.top,
  bottom: kBancoModalPadding.bottom,
  right: kBancoModalPadding.right,
  left: kBancoModalPadding.left,
);

// --- Text Styles --- //

/// Base text style for Banco Game, setting bold weight.
const TextStyle kBancoGlobalTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
);

/// Text style for Banco Modal title, derived from the global style and customized with a specific color and font size.
TextStyle kBancoModalTitleTextStyle = kBancoGlobalTextStyle.copyWith(
  color: kBancoBlueColor,
  fontSize: kBancoModalTitleFontSize,
);

/// Text style for Banco Modal body text, derived from the global style and customized with a specific color and font size.
TextStyle kBancoModalTextStyle = kBancoGlobalTextStyle.copyWith(
  color: kBancoBlueColor,
  fontSize: kBancoModalTextFontSize,
);

/// Text style for Banco Modal underlined text, applying an underline decoration.
const TextStyle kBancoModalUnderlineTextStyle = TextStyle(
  decoration: TextDecoration.underline,
);

/// Text style for the Banco Flat Button, with white color, specific font size,
/// and a shadow for the text.
TextStyle kBancoFlatButtonTextStyle = kBancoGlobalTextStyle.copyWith(
  color: Colors.white,
  fontSize: kBancoFlatButtonFontSize,
  shadows: <Shadow>[
    Shadow(
      offset: const Offset(1.5, 1.5),
      blurRadius: 2,
      color: Colors.black.withOpacity(0.5),
    ),
  ],
);

// --- Decorations --- //

/// Decoration style for Banco Modal, setting the background color, border radius, and a yellow border on all sides.
Decoration kBancoModalDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: const BorderRadius.all(Radius.circular(kBancoGameModalRadius)),
  border: Border(
    left: BorderSide(
      width: kBancoModalBorderSize.left,
      color: kBancoYellowColor,
    ),
    right: BorderSide(
      width: kBancoModalBorderSize.right,
      color: kBancoYellowColor,
    ),
    bottom: BorderSide(
      width: kBancoModalBorderSize.bottom,
      color: kBancoYellowColor,
    ),
    top: BorderSide(
      width: kBancoModalBorderSize.top,
      color: kBancoYellowColor,
    ),
  ),
);

// --- Offsets --- //

/// Offset for the Banco Modal close button, setting the X and Y positions relative to the modal.
const Offset kBancoModalCloseOffset =
    Offset(kBancoModalCloseXOffset, kBancoModalCloseYOffset);
