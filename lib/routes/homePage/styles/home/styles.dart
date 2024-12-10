import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/constants.dart';

// --- Paddings --- //

/// Padding for the home header, applied to the right side.
const EdgeInsets kHomeHeaderPaddingStyle =
    EdgeInsets.only(right: kHomeHeaderRightPadding);

/// Padding for the game list in the home screen, applied vertically and horizontally.
const EdgeInsets kHomeGameListPaddingStyle = EdgeInsets.symmetric(
  vertical: kHomeGameListVerticalPadding,
  horizontal: kHomeGameListHorizontalPadding,
);

/// Padding for the entire game list at the bottom.
const EdgeInsets kHomeGamesPaddingStyle =
    EdgeInsets.only(bottom: kHomeGameListBottomPadding);

/// Padding for the modal, applied vertically.
const EdgeInsets kHomeModalPaddingStyle =
    EdgeInsets.symmetric(vertical: kHomeModalVerticalPadding);

/// Internal padding for the modal, applied horizontally and vertically.
const EdgeInsets kHomeModalInternalPaddingStyle = EdgeInsets.symmetric(
  horizontal: kHomeModalInternalHorizontalPadding,
  vertical: kHomeModalInternalVerticalPadding,
);

/// Padding to separate elements within the modal, applied to the bottom.
const EdgeInsets kHomeModalElementSeparatorPaddingStyle =
    EdgeInsets.only(bottom: kHomeModalElementSeparatorSize);

// --- Decorations --- //

/// Decoration for the separator between game items, with rounded corners and black color.
const BoxDecoration kHomeGameSeparatorDecoration = BoxDecoration(
  borderRadius: kHomeGameSeparatorBorderRadiusStyle,
  color: Colors.black,
);

/// Decoration for the entire games list, adding a shadow effect.
BoxDecoration kHomeGamesDecoration = BoxDecoration(
  boxShadow: <BoxShadow>[
    BoxShadow(
      offset: const Offset(0, 20),
      color: Colors.black.withOpacity(0.3),
      blurRadius: 10,
    ),
  ],
);

/// Decoration for the modal, with a specific background color and rounded corners.
BoxDecoration kHomeModalDecoration = const BoxDecoration(
  color: kHomeModalBackgroundColor,
  borderRadius: kHomeModalBorderRadiusStyle,
);

// --- Radii --- //

/// Border radius for the game separator.
const BorderRadius kHomeGameSeparatorBorderRadiusStyle = BorderRadius.all(
  Radius.circular(kHomeGameSeparatorBorderRadius),
);

/// Border radius for the modal.
const BorderRadius kHomeModalBorderRadiusStyle =
    BorderRadius.all(Radius.circular(kHomeModalBorderRadius));

// --- Text Styles --- //

/// Text style for displaying user information, with a specific font size and blue color.
const TextStyle kHomeUserInfoTextStyle = TextStyle(
  fontSize: kHomeUserInfosFontSize,
  color: kHomeBlueColor,
);

/// Text style for displaying user's credit information, boldened.
TextStyle kHomeUserInfoCreditsTextStyle = kHomeUserInfoTextStyle.copyWith(
  fontWeight: FontWeight.w800,
);

/// Text style for the "by" text in the home logo, italic and bold.
const TextStyle kHomeLogoByTextStyle = TextStyle(
  fontSize: kHomeLogoByFontSize,
  fontWeight: FontWeight.w800,
  color: kHomeByBlueColor,
  fontStyle: FontStyle.italic,
);

/// Text style for the "All Games" section, with bold and larger font.
const TextStyle kHomeAllGameTextStyle = TextStyle(
  fontSize: kHomeAllGamesFontSize,
  fontWeight: FontWeight.w800,
);

/// Text style for the modal text, with white color and bold.
const TextStyle kHomeModalTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w800,
  fontSize: kHomeModalTextFontSize,
);

/// Text style for the modal title, inheriting the modal text style but with a larger font.
TextStyle kHomeModalTitleTextStyle = kHomeModalTextStyle.copyWith(
  fontSize: kHomeModalTitleTextFontSize,
);

// --- Gaps --- //

/// Horizontal gap between header images.
const SizedBox kHomeHeaderImagesSeparatorGap =
    SizedBox(width: kHomeHeaderImagesSeparatorSize);

/// Vertical gap between the "All Games" separator.
const SizedBox kHomeAllGameSeparatorGap =
    SizedBox(height: kHomeAllGameSeparatorGapSize);

/// Vertical gap to separate elements within the modal.
const SizedBox kHomeModalElementSeparatorGap =
    SizedBox(height: kHomeModalElementSeparatorSize);
