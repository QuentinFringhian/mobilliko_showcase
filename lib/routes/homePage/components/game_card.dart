import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/illiko_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/components/gameCardParts/game_card_background.dart';
import 'package:mobilliko_showcase/routes/homePage/components/gameCardParts/game_card_bages.dart';
import 'package:mobilliko_showcase/routes/homePage/components/gameCardParts/game_card_infos.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/styles.dart';
import 'package:mobilliko_showcase/utils/game_class.dart';
import 'package:provider/provider.dart';

/// A widget that represents a card for a game, displaying the game's
/// background, logo, price, and additional information.
class GameCard extends StatelessWidget {
  /// Creates a [GameCard] with the required game details.
  const GameCard({required this.game, super.key});

  /// The game details to be displayed on the card.
  final GameClass game;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GameCardBackground(backgroundImage: game.backgroundImage),
        Positioned.fill(
          child: Padding(
            padding: kGameCardPaddingStyle,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  child: IllikoLogo(illikoBadgeType: game.illikoBadgeType),
                ),
                _GameCardLogo(logo: game.logo),
                Positioned(
                  top: 0,
                  right: 0,
                  bottom: 0,
                  child: GameCardBadges(price: game.price),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: GameCardInfos(
                    name: game.name,
                    maxGain: game.maxGain,
                    isNew: game.isNew,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              hoverDuration: kGameCardInkDuration,
              splashFactory: InkRipple.splashFactory,
              onTap: () {
                context.read<GameGainprovider>().spendCredits(game.price);
                context.go('/gameIntro?redirect=${game.redirectLink}');
              },
            ),
          ),
        ),
      ],
    );
  }
}

class _GameCardLogo extends StatelessWidget {
  const _GameCardLogo({required this.logo});

  final String logo;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(logo),
      height: kGameCardGameLogoHeightSize,
    );
  }
}
