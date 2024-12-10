import 'package:mobilliko_showcase/routes/homePage/utils/illiko_badge_types.dart';

/// A class representing the details of a game.
class GameClass {
  /// Creates a [GameClass] instance with the required game details.
  const GameClass({
    required this.name,
    required this.maxGain,
    required this.price,
    required this.backgroundImage,
    required this.logo,
    required this.redirectLink,
    required this.illikoBadgeType,
    this.isNew = false,
  });

  /// The name of the game.
  final String name;

  /// The maximum gain possible in the game.
  final int maxGain;

  /// The price of the game.
  final double price;

  /// The file path of the background image for the game.
  final String backgroundImage;

  /// The file path of the game's logo.
  final String logo;

  /// The link to redirect for more details about the game.
  final String redirectLink;

  /// A flag indicating whether the game is new. Defaults to `false`.
  final bool isNew;

  /// The type of Illiko badge associated with the game.
  final IllikoBadgeType illikoBadgeType;
}
