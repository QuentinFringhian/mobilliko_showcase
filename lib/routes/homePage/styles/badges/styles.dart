import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/constants.dart';

// --- Paddings --- //

/// Padding style for game badges, applied horizontally.
const EdgeInsets kGameBadgePaddingStyle =
    EdgeInsets.symmetric(horizontal: kGameBadgeHorizontalPadding);

/// Padding style for the "Play" badge, applied both vertically and horizontally.
const EdgeInsets kGameBadgePlayPaddingStyle = EdgeInsets.symmetric(
  vertical: kGameBadgePlayVerticalPadding,
  horizontal: kGameBadgePlayHorizontalPadding,
);

// --- Decorations --- //

/// Decoration for the favorite badge, using a circular shape and white color.
const BoxDecoration kGameBadgeFavoriteDecoration = BoxDecoration(
  color: Colors.white,
  shape: BoxShape.circle,
);

/// Decoration for the "New" badge, with a specific border radius and background color.
const BoxDecoration kGameBadgeNewDecoration = BoxDecoration(
  borderRadius: kGameBadgeNewBorderRadiusStyle,
  color: kGameBadgeNewBackgroundColor,
);

/// Decoration for general game badges, with white color and rounded corners.
const BoxDecoration kGameBadgeDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: kGameBadgeBorderRadiusStyle,
);

/// Decoration for the "Play" badge, with a custom color and border radius.
const BoxDecoration kGameBadgePlayDecoration = BoxDecoration(
  color: kGameBadgeTextColor,
  borderRadius: kGameBadgeBorderRadiusStyle,
);

// --- Radii --- //

/// Border radius style for the "New" badge.
const BorderRadius kGameBadgeNewBorderRadiusStyle =
    BorderRadius.all(Radius.circular(kGameBadgeNewBorderRadius));

/// Border radius style for general game badges.
const BorderRadius kGameBadgeBorderRadiusStyle =
    BorderRadius.all(Radius.circular(kGameBadgeRadius));

// --- Text Styles --- //

/// Text style for the "New" badge, with white color and semi-bold weight.
const TextStyle kGameBadgeNewTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
);

/// Text style for general game badges, with specified color and bold weight.
const TextStyle kGameBadgeTextStyle = TextStyle(
  color: kGameBadgeTextColor,
  fontWeight: FontWeight.w900,
);

/// Text style for the "Play" badge, with white color and a custom font size.
const TextStyle kGameBadgePlayTextStyle = TextStyle(
  color: Colors.white,
  fontSize: kGameBadgePlayFontSize,
);
