import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/constants.dart';

// --- Paddings --- //

/// Padding style for the Banco Intro Logo Splash Price, applying equal padding on all sides.
const EdgeInsetsGeometry kBancoIntroLogoSplashPricePadding =
    EdgeInsets.all(kBancoIntroLogoSplashPriceAllPadding);

// --- Radii --- //

/// Border radius style for the Banco Intro Logo Splash Price, applying a circular radius.
BorderRadiusGeometry kBancoIntroLogoSplashPriceRadiusStyle =
    BorderRadius.circular(kBancoIntroLogoSplashPriceBorderRadius);

// --- Decorations --- //

/// Decoration style for the Banco Intro Logo Splash Price, setting the background color and border radius.
Decoration kBancoIntroLogoSplashPriceDecoration = BoxDecoration(
  color: kBancoBlueColor,
  borderRadius: kBancoIntroLogoSplashPriceRadiusStyle,
);

/// Decoration style for the Banco Introduction background.
Decoration kBancoIntroBackgroundDecoration = const BoxDecoration(
  image: DecorationImage(
    image: kBancoIntroBackgroundImage,
    fit: BoxFit.fill,
  ),
);

// --- Gaps --- //

/// Vertical gap above the Banco introduction selection.
const SizedBox kBancoIntroductionSelectionTopGap =
    SizedBox(height: kBancoIntroSelectTopPadding);

/// Vertical gap below the Banco introduction selection.
const SizedBox kBancoIntroductionSelectionBottomGap =
    SizedBox(height: kBancoIntroSelectBottomPadding);

// --- Text Styles --- //

/// Text style for the title in Banco Game introduction selection.
TextStyle kBancoIntroSelectTitleTextStyle = kBancoGlobalTextStyle.copyWith(
  fontSize: kBancoIntroSelectFontSize,
);

/// Text style for the price text in Banco Intro Logo Splash, derived from the global text style, with white color and a specific font size.
TextStyle kBancoIntroLogoSplashPriceTextStyle = kBancoGlobalTextStyle.copyWith(
  color: Colors.white,
  fontSize: kBancoIntroLogoSplashPriceFontSize,
);

/// Text style for the disclaimer in the Banco Game introduction, derived from the global text style with a specific font size and blue color.
TextStyle kBancoIntroductionDisclaimerTextStyle =
    kBancoGlobalTextStyle.copyWith(
  fontSize: kBancoIntroDisclaimerFontSize,
  color: kBancoBlueColor,
);
