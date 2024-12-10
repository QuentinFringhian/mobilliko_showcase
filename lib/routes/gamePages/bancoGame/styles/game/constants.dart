import 'package:flutter/material.dart';

// --- Paddings --- //

/// Top padding for Banco Game layout.
const double kBancoGameTopPadding = 30;

/// Horizontal padding for the Banco Game logo.
const double kBancoGameLogoHorizontalPadding = 7;

/// Vertical padding for the Banco Game logo.
const double kBancoGameLogoVerticalPadding = 28;

/// Bottom padding for the Banco Game logo.
const double kBancoGameLogoBottomPadding = 49;

/// Padding between scratch areas in Banco Game.
const double kBancoGameBetweenScratchPadding = 9;

/// Bottom padding for the scratch area in Banco Game.
const double kBancoGameScratchBottomPadding = 41;

/// Padding around the gain display in Banco Game scratch areas.
const double kBancoGameScratchGainPadding = 8;

/// Left padding for the gain value text in Banco Game scratch areas.
const double kBancoGameScratchGainValueLeftPadding = 55;

// --- Margins --- //

/// Margin for the scratch container in Banco Game.
const double kBancoGameScratchContainerMargin = 7;

// --- Radii --- //

/// Border radius for the scratch areas in Banco Game.
const double kBancoGameScratchRadius = 8;

// --- Sizes --- //

/// Size of the scratch areas in Banco Game.
const Size kBancoGameScratchSize = Size(252, 74);

/// Size of the scratching area in Banco Game.
const Size kBancoGameScratchingAreaSize = Size(228, 74);

// --- Sources --- //

/// Image source for the first scratch area in Banco Game.
const ImageProvider kBancoGameFirstScratchImage =
    AssetImage('assets/images/banco/scratch_text.png');

/// Image source for the second scratch area in Banco Game.
const ImageProvider kBancoGameSecondScratchImage =
    AssetImage('assets/images/banco/scratch_text_bis.png');

/// Asset path for the pink version of the Banco Game logo.
const String kBancoGameLogoPinkPath =
    'assets/images/banco/bancoLogos/banco_logo_pink.png';

/// Asset path for the orange version of the Banco Game logo.
const String kBancoGameLogoOrangePath =
    'assets/images/banco/bancoLogos/banco_logo_orange.png';

/// Asset path for the blue version of the Banco Game logo.
const String kBancoGameLogoBluePath =
    'assets/images/banco/bancoLogos/banco_logo_blue.png';

/// Asset path for the green version of the Banco Game logo.
const String kBancoGameLogoGreenPath =
    'assets/images/banco/bancoLogos/banco_logo_green.png';

// --- Colors --- //

/// First gradient color for the scratch border in Banco Game.
const Color kBancoGameScratchBorderFirstGradiantColor = Color(0xffcc993b);

/// Second gradient color for the scratch border in Banco Game.
const Color kBancoGameScratchBorderSecondGradiantColor = Color(0xfffdf48c);

/// Background color for the gain display in Banco Game scratch areas.
const Color kBancoGameScratchGainBackgroundColor = Color(0xffb3bfc8);

/// Highlight text color for the gain display in Banco Game scratch areas.
const Color kBancoGameScratchGainHighlightTextColor = Color(0xfff0bd40);

/// Background color for the green section in Banco Game.
const Color kBancoGameGreenBackgroundColor = Color(0xff51b2a5);

/// Background color for the blue section in Banco Game.
const Color kBancoGameBlueBackgroundColor = Color(0xff479ede);

/// Background color for the yellow section in Banco Game.
const Color kBancoGameYellowBackgroundColor = Color(0xfff5c445);

/// Background color for the pink section in Banco Game.
const Color kBancoGamePinkBackgroundColor = Color(0xffd93365);

/// Scratch color for the pink section in Banco Game.
const Color kBancoGamePinkScratchColor = Color(0xffdb4994);

/// Scratch color for the orange section in Banco Game.
const Color kBancoGameOrangeScratchColor = Color(0xffe7903d);

/// Scratch color for the blue section in Banco Game.
const Color kBancoGameBlueScratchColor = Color(0xff53b6ec);

/// Scratch color for the green section in Banco Game.
const Color kBancoGameGreenScratchColor = Color(0xff54b496);

// --- Font Sizes --- //

/// Font size for the suffix of the gain value in the Banco Game scratch area.
const double kBancoGameScratchGainSuffixFontSize = 24;

// --- Font Sizes --- //

/// Font size for the main gain value in the Banco Game scratch area.
const double kBancoGameScratchGainFontSize = 32;

/// Font size for the title text in the Banco Game End Splash Screen.
const double kBancoGaneEndSplashTitleFontSize = 36;

/// Font size for the subtitle text in the Banco Game End Splash Screen.
const double kBancoGaneEndSplashSubTitleFontSize = 21;

/// Font size for the gain text in the Banco Game End Splash Screen.
const double kBancoGaneEndSplashGainFontSize = 52;

// --- Offsets --- //

/// Offset for the left position of the star in the Banco Game End Splash Screen.
const double kBancoGaneEndSplashStarLeftOffset = 15;

// --- Others --- //

/// Gradient rotation angle for the scratch border in Banco Game (in degrees).
const double kBancoGameScratchBorderGradiantRotation = 90;

/// Value for the first gain in Banco Game.
const double kBancoGameFirstGainValue = 0;

/// Value for the second gain in Banco Game.
const double kBancoGameSecondGainValue = 5;

/// Brush size for the scratch interaction in Banco Game.
const double kBancoGameScratchBrushSize = 25;

/// Threshold value for detecting completion of scratch interaction in Banco Game.
const double kBancoGameScratchTreshold = 70;

/// Minimum gain value required for highlighting in Banco Game.
const double kBancoGameGainValueHighlightMin = 1;

/// Delay (in seconds) before showing the win in Banco Game.
const int kBancoGameWinDelay = 2;

/// Scale factor for the star in the Banco Game End Splash Screen.
const double kBancoGaneEndSplashStarScaleFactor = 1.35;

/// Stroke width for the title text in the Banco Game End Splash Screen.
const double kBancoGaneEndSplashTitleTextStrokeWidth = 3;

/// Maximum width for the subtitle text in the Banco Game End Splash Screen.
const double kBancoGaneEndSplashSubTitleTextMaxWidth = 250;
