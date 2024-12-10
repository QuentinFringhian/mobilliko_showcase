import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/constants.dart';

// --- Paddings --- //

/// Padding style applied to the game card using the defined game card padding.
const EdgeInsets kGameCardPaddingStyle = EdgeInsets.all(kGameCardPadding);

// --- Radii --- //

/// Border radius style for the game card using the defined border radius.
const BorderRadius kGameCardBorderRadiusStyle =
    BorderRadius.all(Radius.circular(kGameCardBorderRadius));

/// Border radius style for badges on the game card using the defined badge radius.
const BorderRadius kGameCardBadgeBorderRadiusStyle =
    BorderRadius.all(Radius.circular(kGameCardBadgeRadius));

// --- Borders --- //

/// Border style for the hollow badge on the Banco card, using the grey color and border size.
BoxBorder kBancoCardHollowBadgeBorderStyle = Border.all(
  color: kGameCardGreyColor,
  width: kBancoCardHollowBadgeBorderSize,
);

// --- Gradients --- //

/// Gradient applied to the game card background, transitioning from transparent to a dark color.
Gradient kGameCardGradient = LinearGradient(
  colors: <Color>[
    Colors.transparent,
    Colors.black.withOpacity(0.8),
  ],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  stops: const <double>[0.5, 1],
);

// --- gaps --- //

/// Vertical gap between badges on the game card.
const SizedBox kGameCardBadgesInBetweenVerticalGap =
    SizedBox(height: kGameCardBadgesInBetweenVerticalPadding);

// --- Text Styles --- //

/// Text style for general text on the game card.
const TextStyle kGameCardTextStyle = TextStyle(
  color: Colors.white,
  fontSize: kGameCardFontSize,
);

/// Text style for info badges on the game card, using a grey color and bold font weight.
TextStyle kGameCardInfoBadgeTextStyle = kGameCardTextStyle.copyWith(
  color: kGameCardGreyColor,
  fontWeight: FontWeight.w900,
);

/// Text style for game card information, using a bold font weight.
TextStyle kGameCardInfoTextStyle = kGameCardTextStyle.copyWith(
  fontWeight: FontWeight.w700,
);

/// Text style for the maximum gain text on the game card.
const TextStyle kGameCardMaxGainTextStyle =
    TextStyle(fontSize: kGameCardMaxGainFontSize);
