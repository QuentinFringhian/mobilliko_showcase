import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/styles.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/number_formater.dart';

/// A widget that displays a badge with the game's price.
class GamePriceBadge extends StatelessWidget {
  /// Creates a [GamePriceBadge] with the required price.
  const GamePriceBadge({
    required this.price,
    this.size = kGameBadgeDefaultSize,
    super.key,
  });

  /// The price of the game displayed in the badge.
  final double price;

  /// The size of the badge.
  final double size;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(minWidth: size),
      child: Container(
        height: size,
        padding: kGameBadgePaddingStyle,
        decoration: kGameBadgeDecoration,
        child: Center(
          child: Text(
            '${formatPrice(price)}${translate("other.currency")}',
            style: kGameBadgeTextStyle.copyWith(fontSize: size / 2),
          ),
        ),
      ),
    );
  }
}
