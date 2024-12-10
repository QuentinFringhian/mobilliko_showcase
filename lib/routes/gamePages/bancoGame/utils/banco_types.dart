import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/flat_button_types.dart';

/// A class representing the different types of Banco with specific styles,
/// such as background color, logo, scratch color, a button style, and a preview.
class BancoType {
  /// Creates a [BancoType] with the given properties.
  ///
  /// All parameters [backgroundColor], [scratchColor], [logoPath], [flatButtonStyle], and [previewPath]
  /// are required and must be non-null.
  const BancoType({
    required this.backgroundColor,
    required this.logoPath,
    required this.scratchColor,
    required this.flatButtonStyle,
    required this.previewPath,
  });

  /// The background color of the Banco type.
  final Color backgroundColor;

  /// The scratch card color of the Banco type.
  final Color scratchColor;

  /// The path to the logo image for the Banco type.
  final String logoPath;

  /// The flat button style of the Banco type.
  final FlatButtonType flatButtonStyle;

  /// The path to the preview image for the Banco type.
  final String previewPath;
}

/// A collection of predefined [BancoType] styles.
class BancoTypes {
  /// A predefined [BancoType] with a pink theme.
  static const BancoType pink = BancoType(
    backgroundColor: kBancoGameGreenBackgroundColor,
    scratchColor: kBancoGamePinkScratchColor,
    logoPath: kBancoGameLogoPinkPath,
    flatButtonStyle: FlatButtonTypes.pink,
    previewPath: kBancoIntroPreviewPinkPath,
  );

  /// A predefined [BancoType] with an orange theme.
  static const BancoType orange = BancoType(
    backgroundColor: kBancoGameBlueBackgroundColor,
    scratchColor: kBancoGameOrangeScratchColor,
    logoPath: kBancoGameLogoOrangePath,
    flatButtonStyle: FlatButtonTypes.orange,
    previewPath: kBancoIntroPreviewOrangePath,
  );

  /// A predefined [BancoType] with a blue theme.
  static const BancoType blue = BancoType(
    backgroundColor: kBancoGameYellowBackgroundColor,
    scratchColor: kBancoGameBlueScratchColor,
    logoPath: kBancoGameLogoBluePath,
    flatButtonStyle: FlatButtonTypes.blue,
    previewPath: kBancoIntroPreviewBluePath,
  );

  /// A predefined [BancoType] with a green theme.
  static const BancoType green = BancoType(
    backgroundColor: kBancoGamePinkBackgroundColor,
    scratchColor: kBancoGameGreenScratchColor,
    logoPath: kBancoGameLogoGreenPath,
    flatButtonStyle: FlatButtonTypes.green,
    previewPath: kBancoIntroPreviewGreenPath,
  );
}
