import 'package:flutter/material.dart';

// --- Paddings --- //

/// Global padding for Banco logo price slection.
const double kBancoIntroLogoSplashPriceAllPadding = 7;

/// Top padding for Banco introduction slection.
const double kBancoIntroSelectTopPadding = 65;

/// Bottom padding for Banco introduction slection.
const double kBancoIntroSelectBottomPadding = 29;

/// Vertical padding for Banco introduction slections cards.
const double kBancoIntroSelectCardsVerticalPadding = 11;

/// Horizontal padding for Banco introduction slections cards.
const double kBancoIntroSelectCardsHorizontalPadding = 6;

// --- Sizes --- //

/// Size of the Banco introdiction selected card.
const double kBancoIntroSelectedCardSize = 160;

/// Size of the Banco introdiction unselected card.
const double kBancoIntroUnselectedCardSize = 120;

// --- Radii --- //

/// Border radius for the Banco introduction logo splash price element.
const double kBancoIntroLogoSplashPriceBorderRadius = 90;

// --- Opacities --- //

/// Opacity of the Banco introdiction selected card.
const double kBancoIntroSelectedCardOpacity = 1;

/// Opacity of the Banco introdiction unselected card.
const double kBancoIntroUnselectedCardOpacity = 0.6;

// --- Sources --- //

/// Image source for the background of the Banco introduction.
const ImageProvider kBancoIntroBackgroundImage =
    AssetImage('assets/images/banco/banco_background.png');

/// Asset path for the pink version of the Banco Intro preview.
const String kBancoIntroPreviewPinkPath =
    'assets/images/banco/bancoPreviews/banco_preview_pink.png';

/// Asset path for the orange version of the Banco Intro preview.
const String kBancoIntroPreviewOrangePath =
    'assets/images/banco/bancoPreviews/banco_preview_orange.png';

/// Asset path for the blue version of the Banco Intro preview.
const String kBancoIntroPreviewBluePath =
    'assets/images/banco/bancoPreviews/banco_preview_blue.png';

/// Asset path for the green version of the Banco Intro preview.
const String kBancoIntroPreviewGreenPath =
    'assets/images/banco/bancoPreviews/banco_preview_green.png';

// --- Font Sizes --- //

/// Font size for the price displayed on the Banco introduction logo splash screen.
const double kBancoIntroLogoSplashPriceFontSize = 22;

/// Font size for the disclaimer text on the Banco introduction screen.
const double kBancoIntroDisclaimerFontSize = 9;

/// Font size for the title displayed on the Banco introduction selection.
const double kBancoIntroSelectFontSize = 24;

// --- Durations --- //

/// Duration of the Banco introduction logo splash screen animation.
const Duration kBancoIntroLogoSplashDuration = Duration(seconds: 3);

/// Duration of the animation of the introduction selection cards.
const Duration kBancoIntroSelectCardAnimationDuration =
    Duration(milliseconds: 500);

// --- Positions --- //

/// Position for the price text on the Banco introduction logo splash screen, with top and right offsets.
const EdgeInsets kBancoIntroLogoSplashPricePosition =
    EdgeInsets.only(top: 20, right: 52);

// --- Others --- //

/// Stroke width for the title text in the Banco introduction selection.
const double kBancoIntroSelectTitleStrokeWidth = 8;
