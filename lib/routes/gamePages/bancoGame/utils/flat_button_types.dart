import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';

/// A class representing the type of a flat button used in the Banco game,
/// defined by the path to the button's asset or image.
class FlatButtonType {
  /// Creates a [FlatButtonType] with the given asset [path].
  ///
  /// The [path] parameter is required and must be non-null.
  const FlatButtonType({
    required this.path,
  });

  /// The path to the flat button's image or asset.
  final String path;
}

/// A collection of predefined [FlatButtonType] styles for use in the Banco game.
class FlatButtonTypes {
  /// A predefined [FlatButtonType] with a pink theme.
  static const FlatButtonType pink = FlatButtonType(
    path: kBancoFlatButtonPinkPath,
  );

  /// A predefined [FlatButtonType] with a green theme.
  static const FlatButtonType green = FlatButtonType(
    path: kBancoFlatButtonGreenPath,
  );

  /// A predefined [FlatButtonType] with a orange theme.
  static const FlatButtonType orange = FlatButtonType(
    path: kBancoFlatButtonOrangePath,
  );

  /// A predefined [FlatButtonType] with a blue theme.
  static const FlatButtonType blue = FlatButtonType(
    path: kBancoFlatButtonBluePath,
  );
}
