// Game Price Widget
import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/game_favorite_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/game_price_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/styles.dart';

/// A widget that displays a column of badges, including the game's price and
/// other badges like favorites or information.
class GameCardBadges extends StatelessWidget {
  /// Creates a [GameCardBadges] widget with the required price.
  const GameCardBadges({required this.price, super.key});

  /// The price of the game displayed in the price badge.
  final double price;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        GamePriceBadge(price: price),
        const Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GameFavoriteBadge(),
            kGameCardBadgesInBetweenVerticalGap,
            _GameCardInfoBadge(),
          ],
        ),
      ],
    );
  }
}

class _GameCardInfoBadge extends StatelessWidget {
  const _GameCardInfoBadge();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kGameCardBadgeSize,
      height: kGameCardBadgeSize,
      decoration: BoxDecoration(
        borderRadius: kGameCardBadgeBorderRadiusStyle,
        border: kBancoCardHollowBadgeBorderStyle,
      ),
      child: Center(
        child: Text(
          translate('home.information_short'),
          style: kGameCardInfoBadgeTextStyle,
        ),
      ),
    );
  }
}
