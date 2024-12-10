import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/gameParts/banco_game_end_splash_screen.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/gameParts/banco_game_logo.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/gameParts/banco_game_main.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';
import 'package:provider/provider.dart';

/// A stateless widget that represents the main Banco game screen.
///
/// Displays different content depending on whether the game is
/// completed or still ongoing. If a gain is detected, it shows
/// the [BancoGameEndSplashScreen], otherwise it displays the
/// main game layout.
class BancoGame extends StatelessWidget {
  /// Creates a [BancoGame] widget.
  ///
  /// The [style] parameter is required to define the visual theme of the game.
  const BancoGame({
    required this.style,
    super.key,
  });

  /// The visual style of the game, provided as a [BancoType].
  ///
  /// The style includes properties like background color, logo path,
  /// and button styles.
  final BancoType style;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: style.backgroundColor,
      body: SafeArea(
        child: context.watch<GameGainprovider>().latestGain != null
            ? const BancoGameEndSplashScreen()
            : Column(
                children: <Widget>[
                  kBancoGameTopGap,
                  BancoGameLogo(logo: Image.asset(style.logoPath)),
                  kBancoGameLogoBottomGap,
                  BancoGameMain(
                    scratchColor: style.scratchColor,
                    flatButtonStyle: style.flatButtonStyle,
                  ),
                ],
              ),
      ),
    );
  }
}
