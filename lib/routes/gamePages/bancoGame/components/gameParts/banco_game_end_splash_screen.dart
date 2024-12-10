import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';
import 'package:provider/provider.dart';
import 'package:stroke_text/stroke_text.dart';

/// A stateless widget that displays the end splash screen for the Banco game.
///
/// This screen shows different messages based on whether the player won or lost.
/// It also allows the user to return to the main page by tapping the screen.
class BancoGameEndSplashScreen extends StatelessWidget {
  /// Creates a [BancoGameEndSplashScreen] widget.
  ///
  /// The constructor is constant since the widget does not manage any mutable state.
  const BancoGameEndSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => context.go('/'),
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Transform.translate(
            offset: kBancoGaneEndSplashStarOffset,
            child: Transform.scale(
              scale: kBancoGaneEndSplashStarScaleFactor,
              child: const Image(
                image: kBancoStarImage,
                color: kBancoBlueColor,
              ),
            ),
          ),
          _BancoGameEndSplashText(),
        ],
      ),
    );
  }
}

class _BancoGameEndSplashText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GameGainprovider>(
      builder: (_, GameGainprovider gameGainProvider, __) {
        final bool didWin = gameGainProvider.latestGain != null &&
            gameGainProvider.latestGain! > 0;

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            StrokeText(
              text: translate(
                didWin ? 'games.banco.congrats' : 'games.banco.game_done',
              ).toUpperCase(),
              strokeColor: kBancoBlueColor,
              strokeWidth: kBancoGaneEndSplashTitleTextStrokeWidth,
              textStyle: kBancoGaneEndSplashTitleTextStyle,
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: kBancoGaneEndSplashSubTitleTextMaxWidth,
              ),
              child: Text(
                translate(
                  didWin ? 'games.banco.win' : 'games.banco.retry',
                ),
                textAlign: TextAlign.center,
                style: kBancoGaneEndSplashSubTitleTextStyle,
              ),
            ),
            if (didWin)
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return kBancoGameEndSplashGainGradiantStyle.createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                  );
                },
                child: Text(
                  '${gameGainProvider.latestGain!.toStringAsFixed(2)} ${translate('other.currency')}',
                  style: kBancoGaneEndSplashGainTextStyle,
                ),
              ),
          ],
        );
      },
    );
  }
}
