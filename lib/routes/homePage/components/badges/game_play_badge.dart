import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/styles.dart';
import 'package:provider/provider.dart';

/// A widget that represents a badge to play the game.
///
/// This widget serves as a button that allows users to initiate gameplay
/// by tapping on it. When tapped, it redirects the user to the game's
/// introduction page and deducts the required credits from their account.
///
/// The badge features a stylish design to enhance visibility and user engagement.
class GamePlayBadge extends StatelessWidget {
  /// Creates a [GamePlayBadge] with a redirect link and price.
  ///
  /// Requires a [redirectLink] for navigation when the badge is tapped,
  /// and a [price] to specify the cost of playing the game.
  const GamePlayBadge({
    required this.redirectLink,
    required this.price,
    super.key,
  });

  /// The link to redirect when the badge is tapped.
  final String redirectLink;

  /// The cost of playing the game, deducted from the user's credits when tapped.
  final double price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<GameGainprovider>().spendCredits(price);
        context.go('/gameIntro?redirect=$redirectLink');
      },
      child: Container(
        padding: kGameBadgePlayPaddingStyle,
        decoration: kGameBadgePlayDecoration,
        child: Text(translate('home.play'), style: kGameBadgePlayTextStyle),
      ),
    );
  }
}
