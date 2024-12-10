import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/components/gameCarouselCardParts/game_carousel_card_badges.dart';
import 'package:mobilliko_showcase/routes/homePage/components/gameCarouselCardParts/game_carousel_card_buttons.dart';
import 'package:mobilliko_showcase/routes/homePage/components/gameCarouselCardParts/game_carousel_card_main.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/styles.dart';
import 'package:mobilliko_showcase/utils/game_class.dart';

/// A widget that displays a single game card in the carousel.
///
/// The card shows the game's background image, badges, logo, maximum gain,
/// and action buttons. It uses the properties of the provided `GameClass` object
/// to populate its content.
///
/// The background image of the card is set to cover the entire area,
/// ensuring an appealing visual presentation.
class GameCarouselCard extends StatelessWidget {
  /// Creates a `GameCarouselCard` widget.
  ///
  /// Requires a [GameClass] object that contains details about the game.
  const GameCarouselCard({required this.game, super.key});

  /// The game details to display on the card.
  final GameClass game;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kGameCarouselCardPaddingStyle,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(game.backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          GameCarouselCardBadges(
            isNew: game.isNew,
            illikoBadgeType: game.illikoBadgeType,
            price: game.price,
          ),
          GameCarouselCardMain(logo: game.logo, maxGain: game.maxGain),
          GameCarouselCardButtons(
            redirectLink: game.redirectLink,
            price: game.price,
          ),
        ],
      ),
    );
  }
}
