import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/styles/game_intro_constants.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/styles/game_intro_style.dart';

/// A splash screen widget that displays an addiction warning message.
///
/// The widget contains an addiction warning image and an age limit icon,
/// with padding and spacing applied for proper layout. It uses a column layout to
/// vertically arrange the content, keeping the images aligned appropriately.
class AddictWarningSplash extends StatelessWidget {
  /// Creates an [AddictWarningSplash] widget.
  const AddictWarningSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: kGameIntroAddictSplashPaddingStyle,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(),
            Image(
              image: kGameIntroAddictSplashWarningImage,
              height: kGameIntroAddictSplashWarningImageSize.height,
              width: kGameIntroAddictSplashWarningImageSize.width,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Image(
                  image: kGameIntroAddictSplashAgeLimitImage,
                  height: kGameIntroAddictSplashAgeLimitImageSize,
                  width: kGameIntroAddictSplashAgeLimitImageSize,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
