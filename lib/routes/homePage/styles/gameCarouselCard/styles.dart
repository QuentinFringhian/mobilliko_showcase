import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/constants.dart';

// --- Paddings --- //

/// Padding style for the game carousel card, applying top and bottom padding.
const EdgeInsets kGameCarouselCardPaddingStyle = EdgeInsets.only(
  top: kGameCarouselCardTopPadding,
  bottom: kGameCarouselCardBottomPadding,
);

/// Padding style for the "New" section in the game carousel card, applying right padding.
const EdgeInsets kGameCarouselCardNewPaddingStyle =
    EdgeInsets.only(right: kGameCarouselCardNewRightPadding);

// --- Text Styles --- //

/// Text style for the maximum gain on the game carousel card, with bold weight and a specific font size.
const TextStyle kGameCarouselCardMaxGainTextStyle = TextStyle(
  fontWeight: FontWeight.w800,
  fontSize: kGameCarouselCardMaxGainFontSize,
);

// --- Gaps --- //

/// Vertical gap between main elements in the game carousel card.
const SizedBox kGameCarouselCardMainElementsGap =
    SizedBox(height: kGameCarouselCardMainSeparationPadding);

/// Horizontal gap between buttons in the game carousel card.
const SizedBox kGameCarouselCardButtonsElementsGap =
    SizedBox(width: kGameCarouselCardButtonsSeparationPadding);

/// Horizontal gap between badges in the game carousel card.
const SizedBox kGameCarouselCardBadgesElementsGap =
    SizedBox(width: kGameCarouselCardBadgesSeparationPadding);
