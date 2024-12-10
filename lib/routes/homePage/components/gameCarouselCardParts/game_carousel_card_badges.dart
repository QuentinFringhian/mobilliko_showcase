import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/game_new_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/game_price_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/illiko_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarouselCard/styles.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/illiko_badge_types.dart';

/// A widget that displays badges for a game carousel card.
///
/// This widget shows various badges related to the game, including:
/// - A "New" badge if the game is new.
/// - An Illiko logo badge that indicates the type of game.
/// - A price badge displaying the game's price.
///
/// The badges are arranged horizontally, providing clear visibility for users.
class GameCarouselCardBadges extends StatelessWidget {
  /// Creates a `GameCarouselCardBadges` widget.
  ///
  /// Requires [isNew], [illikoBadgeType], and [price] to display the relevant badges.
  const GameCarouselCardBadges({
    required this.isNew,
    required this.illikoBadgeType,
    required this.price,
    super.key,
  });

  /// Indicates if the game is new and should display the "New" badge.
  final bool isNew;

  /// The type of Illiko badge to display.
  final IllikoBadgeType illikoBadgeType;

  /// The price of the game to be displayed in the price badge.
  final double price;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        if (isNew)
          const Padding(
            padding: kGameCarouselCardNewPaddingStyle,
            child: GameNewBadge(fontSize: kGameCarouselCardNewFontSize),
          ),
        IllikoLogo(
          illikoBadgeType: illikoBadgeType,
          width: kGameCarouselCardIllikoSize,
        ),
        kGameCarouselCardBadgesElementsGap,
        GamePriceBadge(price: price, size: kGameCarouselCardPriceSize),
      ],
    );
  }
}
