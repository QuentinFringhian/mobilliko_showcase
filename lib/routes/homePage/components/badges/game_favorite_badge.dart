import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/styles.dart';

/// A widget that displays a favorite badge with an icon, indicating a favorite status.
class GameFavoriteBadge extends StatelessWidget {
  /// Creates a [GameFavoriteBadge] with optional size parameters.
  const GameFavoriteBadge({
    this.badgeSize = kGameBadgeDefaultSize,
    super.key,
  });

  /// The size of the badge.
  final double badgeSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: badgeSize,
      height: badgeSize,
      decoration: kGameBadgeFavoriteDecoration,
      child: Icon(
        Icons.favorite_border,
        color: kGameBadgeTextColor,
        size: badgeSize / 1.5,
      ),
    );
  }
}
