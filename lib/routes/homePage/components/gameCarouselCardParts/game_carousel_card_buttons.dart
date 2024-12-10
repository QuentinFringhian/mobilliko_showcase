import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/game_favorite_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/game_play_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/styles.dart';

/// A widget that displays action buttons for a game carousel card.
///
/// This widget includes buttons for playing the game and marking it as a favorite.
/// It provides a convenient way for users to interact with the game directly from
/// the carousel, enhancing the user experience.
///
/// The buttons are arranged horizontally, allowing easy access and visibility.
class GameCarouselCardButtons extends StatelessWidget {
  /// Creates a `GameCarouselCardButtons` widget.
  ///
  /// Requires a [redirectLink] for navigation when the play button is tapped,
  /// and a [price] to display the game's price.
  const GameCarouselCardButtons({
    required this.redirectLink,
    required this.price,
    super.key,
  });

  /// The link to redirect when the play button is pressed.
  final String redirectLink;

  /// The price of the game, displayed alongside the action buttons.
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GamePlayBadge(redirectLink: redirectLink, price: price),
        kGameCarouselCardButtonsElementsGap,
        const GameFavoriteBadge(badgeSize: kGameCarouselCardFavoriteSize),
      ],
    );
  }
}
