import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/styles/game_intro_constants.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/styles/game_intro_style.dart';

/// A simple splash screen widget that displays the Illiko logo with a gradient background.
///
/// This widget centers the logo on a gradient background, typically used in the game intro screen.
class IllikoLogoSplash extends StatelessWidget {
  /// Creates an [IllikoLogoSplash] widget.
  const IllikoLogoSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: kGameIntroIllikoSplashBackgroundGradient,
      ),
      child: Center(
        child: Image(
          image: kIntroGameIllikoSplashLogoImage,
          height: kGameIntroIllikoSplashLogoImageSize.height,
          width: kGameIntroIllikoSplashLogoImageSize.width,
        ),
      ),
    );
  }
}
