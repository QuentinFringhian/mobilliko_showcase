import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/styles.dart';

/// A widget that displays a "New" badge for games.
class GameNewBadge extends StatelessWidget {
  /// Creates a [GameNewBadge].
  const GameNewBadge({
    this.fontSize = kGameBadgeNewFontSize,
    super.key,
  });

  /// The font size of the badge text.
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kGameBadgeNewPadding,
      decoration: kGameBadgeNewDecoration,
      child: Text(
        translate('home.new_badge'),
        style: kGameBadgeNewTextStyle.copyWith(fontSize: fontSize),
      ),
    );
  }
}
