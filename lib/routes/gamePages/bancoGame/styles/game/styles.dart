import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/styles.dart';

// --- Paddings --- //

/// Padding style for the Banco Game logo, applied horizontally.
const EdgeInsetsGeometry kBancoGameLogoPaddingStyle = EdgeInsets.symmetric(
  horizontal: kBancoGameLogoHorizontalPadding,
  vertical: kBancoGameLogoVerticalPadding,
);

/// Padding style for the Banco Game scratch gain area.
const EdgeInsetsGeometry kBancoGameScratchGainPaddingStyle =
    EdgeInsets.all(kBancoGameScratchGainPadding);

// --- Margins --- //

/// Margin style for the scratch container in Banco Game.
const EdgeInsetsGeometry kBancoGameScratchContainerMarginStyle =
    EdgeInsets.all(kBancoGameScratchContainerMargin);

// --- Radii --- //

/// Border radius style for the scratch areas in Banco Game.
BorderRadiusGeometry kBancoGameScratchRadiusStyle =
    BorderRadius.circular(kBancoGameScratchRadius);

// --- Gradients --- //

/// Gradient style for the Banco Game scratch border, consisting of alternating colors.
const Gradient kBancoGameScratchBorderGradiantStyle = LinearGradient(
  colors: <Color>[
    kBancoGameScratchBorderFirstGradiantColor,
    kBancoGameScratchBorderSecondGradiantColor,
    kBancoGameScratchBorderFirstGradiantColor,
    kBancoGameScratchBorderSecondGradiantColor,
  ],
  transform: GradientRotation(kBancoGameScratchBorderGradiantRotation),
);

/// Gradient style for the Banco Game End Splash screen gain display.
const Gradient kBancoGameEndSplashGainGradiantStyle = LinearGradient(
  colors: <Color>[
    kBancoGameScratchBorderFirstGradiantColor,
    kBancoGameScratchBorderSecondGradiantColor,
    kBancoGameScratchBorderFirstGradiantColor,
    kBancoGameScratchBorderSecondGradiantColor,
  ],
);

// --- Decorations --- //

/// Decoration style for the Banco Game scratch area, including border radius and gradient.
Decoration kBancoGameScratchDecoration = BoxDecoration(
  borderRadius: kBancoGameScratchRadiusStyle,
  gradient: kBancoGameScratchBorderGradiantStyle,
);

// --- Gaps --- //

/// Vertical gap above the Banco Game content.
const SizedBox kBancoGameTopGap = SizedBox(height: kBancoGameTopPadding);

/// Vertical gap below the Banco Game logo.
const SizedBox kBancoGameLogoBottomGap =
    SizedBox(height: kBancoGameLogoBottomPadding);

/// Horizontal gap for the gain value in Banco Game's scratch area.
const SizedBox kBancoGameScratchGainValueLeftGap = SizedBox(
  width: kBancoGameScratchGainValueLeftPadding,
);

// --- Offsets --- //

/// Offset for the position of the star in the Banco Game End Splash Screen.
const Offset kBancoGaneEndSplashStarOffset =
    Offset(kBancoGaneEndSplashStarLeftOffset, 0);

// --- Text Styles --- //

/// Text style for the suffix of the gain value in Banco Game scratch area.
TextStyle kBancoGameScratchGainSuffixTextStyle = kBancoGlobalTextStyle.copyWith(
  fontSize: kBancoGameScratchGainSuffixFontSize,
);

/// Text style for the gain value in Banco Game scratch area.
TextStyle kBancoGameScratchGainTextStyle =
    kBancoGlobalTextStyle.copyWith(fontSize: kBancoGameScratchGainFontSize);

/// Highlighted text style for the gain value in Banco Game scratch area.
TextStyle kBancoGameScratchGainHightLightTextStyle =
    kBancoGameScratchGainTextStyle.copyWith(
  color: kBancoGameScratchGainHighlightTextColor,
  shadows: <Shadow>[
    const Shadow(
      blurRadius: 5,
      color: Colors.white,
    ),
  ],
);

/// Text style for the title text in the Banco Game End Splash Screen.
TextStyle kBancoGaneEndSplashTitleTextStyle = kBancoGlobalTextStyle.copyWith(
  color: Colors.white,
  fontSize: kBancoGaneEndSplashTitleFontSize,
  fontStyle: FontStyle.italic,
  shadows: <Shadow>[
    const Shadow(
      offset: Offset(2, 0.5),
      color: kBancoBlueColor,
    ),
  ],
);

/// Text style for the subtitle text in the Banco Game End Splash Screen.
TextStyle kBancoGaneEndSplashSubTitleTextStyle = kBancoGlobalTextStyle.copyWith(
  color: Colors.white,
  fontSize: kBancoGaneEndSplashSubTitleFontSize,
);

/// Text style for the gain value text in the Banco Game End Splash Screen.
TextStyle kBancoGaneEndSplashGainTextStyle = kBancoGlobalTextStyle.copyWith(
  color: Colors.white,
  fontSize: kBancoGaneEndSplashGainFontSize,
);
