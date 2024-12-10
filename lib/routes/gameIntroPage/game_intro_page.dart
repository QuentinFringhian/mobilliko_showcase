import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/gameIntroParts/addict_warning_splash.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/gameIntroParts/illiko_logo_splash.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/styles/game_intro_constants.dart';

/// A game introduction page that displays a splash screen sequence.
///
/// This page shows an addiction warning splash first, then transitions to the
/// Illiko logo splash before redirecting to the main game route. The transition
/// and redirection delays are controlled by constants.
class GameIntroPage extends StatefulWidget {
  /// Creates a [GameIntroPage] with the specified game route.
  const GameIntroPage({required this.gameRoute, super.key});

  /// The route to the game after the introduction.
  final String gameRoute;

  @override
  State<GameIntroPage> createState() => _GameIntroPageState();
}

class _GameIntroPageState extends State<GameIntroPage> {
  bool _showLogo = false;

  void _transitionToLogo() => setState(() {
        _showLogo = true;
      });

  void _redirectToGame() {
    if (context.mounted) {
      // ignore: use_build_context_synchronously
      context.go(widget.gameRoute);
    }
  }

  @override
  void initState() {
    super.initState();
    Future<void>.delayed(
      kGameIntroductionSplashTransitionDelayDuration,
      _transitionToLogo,
    );
    Future<void>.delayed(
      kGameIntroductionRedirectionDelayDuration,
      _redirectToGame,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSwitcher(
        duration: kGameIntroductionSplashTransitionAnimationDuration,
        transitionBuilder: (Widget child, Animation<double> animation) =>
            FadeTransition(opacity: animation, child: child),
        child:
            _showLogo ? const IllikoLogoSplash() : const AddictWarningSplash(),
      ),
    );
  }
}
