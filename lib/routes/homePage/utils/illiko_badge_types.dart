import 'package:mobilliko_showcase/routes/homePage/styles/badges/constants.dart';

/// Represents the type of an Illiko badge with a path to its image.
class IllikoBadgeType {
  /// Creates an [IllikoBadgeType] with the specified image path.
  const IllikoBadgeType({
    required this.path,
  });

  /// The file path to the badge's image.
  final String path;
}

/// Contains predefined instances of [IllikoBadgeType] for different badge colors.
class IllikoBadgeTypes {
  /// The Illiko badge type with a purple badge image.
  static const IllikoBadgeType purple =
      IllikoBadgeType(path: kGameBadgeIllikoPurpleImagePath);

  /// The Illiko badge type with a blue badge image.
  static const IllikoBadgeType blue =
      IllikoBadgeType(path: kGameBadgeIllikoBlueImagePath);
}
