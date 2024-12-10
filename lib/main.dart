import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:go_router/go_router.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/gameIntroPage/game_intro_page.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/banco_page.dart';
import 'package:mobilliko_showcase/routes/homePage/home_page.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  final LocalizationDelegate delegate = await LocalizationDelegate.create(
    fallbackLocale: 'fr',
    supportedLocales: <String>['en_US', 'fr'],
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent,
    ),
  );
  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(
    ChangeNotifierProvider<GameGainprovider>(
      create: (_) => GameGainprovider(),
      child: LocalizedApp(delegate, const MobillikoShowcase()),
    ),
  );
}

final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
    ),
    GoRoute(
      path: '/gameIntro',
      builder: (BuildContext context, GoRouterState state) => GameIntroPage(
        gameRoute: state.uri.queryParameters['redirect'] ?? '/',
      ),
    ),
    GoRoute(
      path: '/banco',
      builder: (BuildContext context, GoRouterState state) => const BancoPage(),
    ),
  ],
);

/// The main widget for the Mobilliko Showcase application.
///
/// This widget sets up the app's navigation and routing using a router configuration.
class MobillikoShowcase extends StatelessWidget {
  /// Creates the [MobillikoShowcase] widget.
  ///
  /// This is the root widget of the application.
  const MobillikoShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
