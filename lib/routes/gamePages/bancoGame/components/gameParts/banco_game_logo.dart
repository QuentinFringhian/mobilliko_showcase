import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';

/// A stateless widget that displays the Banco game logo with additional decorations.
///
/// The logo is displayed in the center, surrounded by star images and a prize image.
/// This widget visually enhances the game's logo with themed elements.
class BancoGameLogo extends StatelessWidget {
  /// Creates a [BancoGameLogo] widget.
  ///
  /// The [logo] parameter is required to specify the image used as the game's logo.
  const BancoGameLogo({
    required this.logo,
    super.key,
  });

  /// The main logo image displayed at the center of the widget.
  final Image logo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 276,
      child: Stack(
        children: <Widget>[
          Positioned(
            right: kBancoSmallStarPosition.right,
            top: kBancoSmallStarPosition.top,
            child: Image(
              image: kBancoStarImage,
              color: kBancoStarsColor,
              width: kBancoStarSize,
            ),
          ),
          Positioned(
            right: kBancoBigStarPosition.right,
            top: kBancoBigStarPosition.top,
            child: Image(
              image: kBancoStarImage,
              color: kBancoStarsColor,
              width: kBancoBigStarSize,
            ),
          ),
          Padding(
            padding: kBancoGameLogoPaddingStyle,
            child: logo,
          ),
          Positioned(
            bottom: kBancoPrizePosition.bottom,
            right: kBancoPrizePosition.right,
            child: Image(
              image: kBancoPrizeImage,
              width: kBancoPrizeImageSize.width,
              height: kBancoPrizeImageSize.height,
            ),
          ),
        ],
      ),
    );
  }
}
