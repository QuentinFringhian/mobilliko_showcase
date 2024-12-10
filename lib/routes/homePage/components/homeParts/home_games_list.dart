import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/homePage/components/game_card.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/styles.dart';
import 'package:mobilliko_showcase/utils/game_class.dart';

/// Displays a list of game cards in a stylized container on the home screen.
/// Includes a section header and separator for the "All Games" label.
/// Iterates over the provided games list to display each game card.
class HomeGamesList extends StatelessWidget {
  /// Creates an instance of [HomeGamesList] with a list of [GameClass] objects.
  const HomeGamesList({required this.games, super.key});

  /// The list of games to be displayed in the list.
  final List<GameClass> games;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kHomeGameListPaddingStyle,
      color: kHomeGameListBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(translate('home.all_games'), style: kHomeAllGameTextStyle),
          Container(
            height: kHomeAllGameSeparatorSize.height,
            width: kHomeAllGameSeparatorSize.width,
            decoration: kHomeGameSeparatorDecoration,
          ),
          kHomeAllGameSeparatorGap,
          for (final GameClass game in games)
            Container(
              padding: kHomeGamesPaddingStyle,
              decoration: kHomeGamesDecoration,
              child: GameCard(game: game),
            ),
        ],
      ),
    );
  }
}
