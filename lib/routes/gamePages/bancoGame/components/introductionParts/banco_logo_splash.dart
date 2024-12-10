import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/gameParts/banco_game_logo.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';

/// A stateful widget that displays the Banco game logo splash screen.
///
/// Shows the game logo and a price label. The widget automatically advances
/// to the next step after a specified duration.
class BancoLogoSplash extends StatefulWidget {
  /// Creates a [BancoLogoSplash] widget.
  ///
  /// The [goToNextstep] callback is required to proceed to the next step
  /// after the splash screen.
  const BancoLogoSplash({
    required this.goToNextstep,
    super.key,
  });

  /// Callback to move to the next step after the splash screen.
  final VoidCallback goToNextstep;

  @override
  State<BancoLogoSplash> createState() => _BancoLogoSplashState();
}

class _BancoLogoSplashState extends State<BancoLogoSplash> {
  Timer? _cbTimer;

  @override
  void initState() {
    super.initState();
    _cbTimer = Timer(kBancoIntroLogoSplashDuration, widget.goToNextstep);
  }

  @override
  void dispose() {
    _cbTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          BancoGameLogo(
            logo: Image(image: AssetImage(BancoTypes.pink.logoPath)),
          ),
          Positioned(
            top: kBancoIntroLogoSplashPricePosition.top,
            right: kBancoIntroLogoSplashPricePosition.right,
            child: DecoratedBox(
              decoration: kBancoIntroLogoSplashPriceDecoration,
              child: Padding(
                padding: kBancoIntroLogoSplashPricePadding,
                child: Text(
                  translate('games.banco.price'),
                  style: kBancoIntroLogoSplashPriceTextStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
