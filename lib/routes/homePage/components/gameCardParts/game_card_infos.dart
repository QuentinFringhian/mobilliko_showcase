import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/homePage/components/badges/game_new_badge.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCard/styles.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/number_formater.dart';

/// A widget that displays information about the game, including the game name,
/// maximum gain, and whether the game is new.
class GameCardInfos extends StatelessWidget {
  /// Creates a [GameCardInfos] widget with the required game details.
  const GameCardInfos({
    required this.name,
    required this.maxGain,
    this.isNew = false,
    super.key,
  });

  /// The name of the game.
  final String name;

  /// The maximum gain possible in the game.
  final int maxGain;

  /// Indicates whether the game is new. Defaults to `false`.
  final bool isNew;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        if (isNew) const GameNewBadge(),
        Text(name, style: kGameCardTextStyle),
        Text.rich(
          TextSpan(
            style: kGameCardInfoTextStyle,
            children: <TextSpan>[
              TextSpan(text: translate('home.max_gain_prefix')),
              const TextSpan(text: ' '),
              TextSpan(
                text:
                    '${formatWithSpaces(maxGain)} ${translate("other.currency")}',
                style: kGameCardMaxGainTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
