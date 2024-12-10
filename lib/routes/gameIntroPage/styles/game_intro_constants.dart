import 'package:flutter/material.dart';

/////////////////////////////
// --- General Section --- //
/////////////////////////////

// --- Durations --- //

/// Duration of the delay between the first splash and the second.
const Duration kGameIntroductionSplashTransitionDelayDuration =
    Duration(seconds: 3);

/// Duration of the animation between the first splash and the second.
const Duration kGameIntroductionSplashTransitionAnimationDuration =
    Duration(milliseconds: 300);

/// Duration of the delay before the redirection.
const Duration kGameIntroductionRedirectionDelayDuration = Duration(seconds: 6);

///////////////////////////////////
// --- Addict Warning Splash --- //
///////////////////////////////////

// --- Paddings --- //

/// Padding for the game intro addict splash screen.
const double kGameIntroAddictSplashGlobalPadding = 7;

// --- Sizes --- //

/// Size (width and height) of the Warning Image.
const Size kGameIntroAddictSplashWarningImageSize = Size(182, 60);

/// Size (width and height) of the age limit Image.
const double kGameIntroAddictSplashAgeLimitImageSize = 24;

// --- Sources --- //

/// Image provider for the addict splash warning image.
const ImageProvider kGameIntroAddictSplashWarningImage =
    AssetImage('assets/images/gameIntro/addict_warning.png');

/// Image provider for the addict splash age limit image.
const ImageProvider kGameIntroAddictSplashAgeLimitImage =
    AssetImage('assets/images/gameIntro/age_limit.png');

////////////////////////////////
// --- Illiko Logo Splash --- //
////////////////////////////////

// --- Sizes --- //

/// Size (width and height) of the Illiko logo Image.
const Size kGameIntroIllikoSplashLogoImageSize = Size(230, 63);

// --- Sources --- //

/// Image provider for the Illiko logo splash logo image.
const ImageProvider kIntroGameIllikoSplashLogoImage =
    AssetImage('assets/images/gameIntro/illiko_logo.png');

// --- Colors --- //

/// First gradient color for the Illiko logo splash background.
const Color kGameIntroIllikoSplashFirstGradiantColor = Color(0xff592E8B);

/// Second gradient color for the Illiko logo splash background.
const Color kGameIntroIllikoSplashSecondGradiantColor = Color(0xffAB3088);

/// Third gradient color for the Illiko logo splash background.
const Color kGameIntroIllikoSplashThirdGradiantColor = Color(0xff793189);
