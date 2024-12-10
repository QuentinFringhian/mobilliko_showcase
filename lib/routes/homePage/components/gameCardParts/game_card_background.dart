import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/styles.dart';

/// A widget that displays the background image of a game card with a gradient overlay.
class GameCardBackground extends StatelessWidget {
  /// Creates a [GameCardBackground] with the required background image.
  const GameCardBackground({required this.backgroundImage, super.key});

  /// The file path of the background image for the game card.
  final String backgroundImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kGameCardBackgroundSize.width,
      height: kGameCardBackgroundSize.height,
      decoration: BoxDecoration(
        borderRadius: kGameCardBorderRadiusStyle,
        image: DecorationImage(
          image: AssetImage(backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: kGameCardBorderRadiusStyle,
          gradient: kGameCardGradient,
        ),
      ),
    );
  }
}
