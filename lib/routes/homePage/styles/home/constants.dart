import 'package:flutter/material.dart';

// --- Paddings --- //

/// Right padding for the home header.
const double kHomeHeaderRightPadding = 2;

/// Horizontal padding for the game list in the home screen.
const double kHomeGameListHorizontalPadding = 15;

/// Vertical padding for the game list in the home screen.
const double kHomeGameListVerticalPadding = 12;

/// Bottom padding for the game list.
const double kHomeGameListBottomPadding = 20;

/// Vertical padding for the modal.
const double kHomeModalVerticalPadding = 128;

/// Internal vertical padding for elements within the modal.
const double kHomeModalInternalVerticalPadding = 25;

/// Internal horizontal padding for elements within the modal.
const double kHomeModalInternalHorizontalPadding = 33;

// --- Sizes --- //

/// Size for the Illiko logo in the home screen.
const double kHomeIllikoLogoSize = 110;

/// Size for the FDJ logo in the home screen.
const double kHomeFdjLogoSize = 80;

/// Space between header images.
const double kHomeHeaderImagesSeparatorSize = 11;

/// Gap size between elements in the "All Games" section.
const double kHomeAllGameSeparatorGapSize = 10;

/// Size of the separator line in the "All Games" section.
const Size kHomeAllGameSeparatorSize = Size(30, 2);

/// Size for the modal width.
const double kHomeModalSize = 339;

/// Vertical gap between elements within the modal.
const double kHomeModalElementSeparatorSize = 40;

// --- Colors --- //

/// Primary blue color used in the home screen.
const Color kHomeBlueColor = Color(0xff0300a4);

/// Secondary blue color used for the "by" text in the logo.
const Color kHomeByBlueColor = Color(0xff393d7c);

/// Background color for the game list section.
const Color kHomeGameListBackgroundColor = Color(0xfff8f8f8);

/// Background color with transparency for the modal view.
Color kHomeModalViewBackgroundColor = Colors.white.withOpacity(0.3);

/// Background color for the modal itself.
const Color kHomeModalBackgroundColor = Color(0xffbc389a);

// --- Font Sizes --- //

/// Font size for user information displayed on the home screen.
const double kHomeUserInfosFontSize = 11;

/// Font size for the "by" text in the home logo.
const double kHomeLogoByFontSize = 9;

/// Font size for the "All Games" title.
const double kHomeAllGamesFontSize = 20;

/// Font size for the modal text.
const double kHomeModalTextFontSize = 20;

/// Font size for the modal title.
const double kHomeModalTitleTextFontSize = 28;

// --- Radii --- //

/// Border radius for the game separator in the list.
const double kHomeGameSeparatorBorderRadius = 90;

/// Border radius for the modal background.
const double kHomeModalBorderRadius = 20;

// --- Sources --- //

/// Asset image for the Illiko logo.
const AssetImage kHomeIllikoLogoImage =
    AssetImage('assets/images/home/illiko_logo_large.png');

/// Asset image for the FDJ logo.
const AssetImage kHomeFdjLogoImage =
    AssetImage('assets/images/home/fdj_logo.png');
