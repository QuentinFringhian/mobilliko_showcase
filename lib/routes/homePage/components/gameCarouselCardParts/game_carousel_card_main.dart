import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/styles.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/number_formater.dart';

/// A widget that displays the main content of a game carousel card.
///
/// This includes the game's logo and the maximum gain associated with the game.
/// It provides a visual representation of the game along with relevant information,
/// allowing users to quickly grasp key details.
///
/// The logo is displayed at the top, followed by a text indicating the maximum gain,
/// formatted for readability.
class GameCarouselCardMain extends StatelessWidget {
  /// Creates a `GameCarouselCardMain` widget.
  ///
  /// Requires the game's [logo] and the [maxGain] value to display.
  const GameCarouselCardMain({
    required this.logo,
    required this.maxGain,
    super.key,
  });

  /// The logo of the game to be displayed.
  final String logo;

  /// The maximum gain associated with the game.
  final int maxGain;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image(image: AssetImage(logo), height: kGameCarouselCardLogoSize),
        kGameCarouselCardMainElementsGap,
        Text(
          "${translate('home.carousel_max_gain_prefix')}${formatWithSpaces(maxGain)}${translate('home.carousel_max_gain_sufix')}",
          textAlign: TextAlign.center,
          style: kGameCarouselCardMaxGainTextStyle,
        ),
      ],
    );
  }
}
