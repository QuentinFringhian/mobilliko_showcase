import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/badges/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/illiko_badge_types.dart';

/// A widget that displays the Illiko logo based on the badge type.
///
/// This widget is responsible for rendering the Illiko badge logo
/// corresponding to the specified [illikoBadgeType]. The logo's size
/// can be customized via the [width] parameter.
class IllikoLogo extends StatelessWidget {
  /// Creates an [IllikoLogo] with the required badge type.
  ///
  /// The [illikoBadgeType] parameter is required to specify which logo
  /// to display. The [width] parameter has a default value.
  const IllikoLogo({
    required this.illikoBadgeType,
    this.width = kGameBadgeIllikoSize,
    super.key,
  });

  /// The type of Illiko badge, determining which logo to display.
  final IllikoBadgeType illikoBadgeType;

  /// The width of the logo image.
  final double width;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage(illikoBadgeType.path),
      width: width,
    );
  }
}
