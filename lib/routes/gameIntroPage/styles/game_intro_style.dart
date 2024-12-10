import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/styles/game_intro_constants.dart';

///////////////////////////////////
// --- Addict Warning Splash --- //
///////////////////////////////////

// --- Paddings --- //

/// Padding style for the Banco Game scratch gain area.
const EdgeInsetsGeometry kGameIntroAddictSplashPaddingStyle =
    EdgeInsets.all(kGameIntroAddictSplashGlobalPadding);

////////////////////////////////
// --- Illiko Logo Splash --- //
////////////////////////////////

// --- Gradients --- //

/// Gradient style for the Illiko logo splash background.
const Gradient kGameIntroIllikoSplashBackgroundGradient = LinearGradient(
  stops: <double>[0, 0.35, 0.65, 1],
  colors: <Color>[
    kGameIntroIllikoSplashFirstGradiantColor,
    kGameIntroIllikoSplashSecondGradiantColor,
    kGameIntroIllikoSplashSecondGradiantColor,
    kGameIntroIllikoSplashThirdGradiantColor,
  ],
);
