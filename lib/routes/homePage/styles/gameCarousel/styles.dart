import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarousel/constants.dart';

// --- Margins --- //

/// Horizontal margin style for the game carousel indicator.
const EdgeInsets kGameCarouselIndicatorMarginStyle = EdgeInsets.symmetric(
  horizontal: kGameCarouselIndicatorHorizontalMargin,
);

// --- Decorations --- //

/// Decoration style for the selected game carousel indicator, with a circular shape, border, and white color.
Decoration kGameCarouselIndicatorDecorationStyle = BoxDecoration(
  shape: BoxShape.circle,
  border: Border.all(color: kGameCarouselIndicatorGreyColor),
  color: Colors.white,
);

/// Decoration style for the unselected game carousel indicator, with a circular shape and a specific background color.
Decoration kGameCarouselUnselectedIndicatorDecorationStyle = BoxDecoration(
  shape: BoxShape.circle,
  color: kGameCarouselUnselectedIndicatorColor,
);
