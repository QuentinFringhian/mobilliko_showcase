import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/homePage/components/games_carousel.dart';
import 'package:mobilliko_showcase/routes/homePage/components/homeParts/home_games_list.dart';
import 'package:mobilliko_showcase/routes/homePage/components/homeParts/home_header.dart';
import 'package:mobilliko_showcase/routes/homePage/components/homeParts/home_win_modal.dart';
import 'package:mobilliko_showcase/routes/homePage/home.dart';
import 'package:provider/provider.dart';

/// A stateful widget representing the home page of the application.
///
/// This page contains a button that navigates to the Banco page.
class HomePage extends StatefulWidget {
  /// Creates a [HomePage] widget.
  ///
  /// The home page provides navigation to the Banco page.
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _checkForGains() async {
    final GameGainprovider gameGainProvider = context.read<GameGainprovider>();
    final double? latestGain = gameGainProvider.latestGain;

    if (latestGain != null) {
      if (latestGain > 0) {
        await showDialog(
          context: context,
          builder: (BuildContext context) =>
              HomeWinModal(latestGain: latestGain),
        );
      }
      gameGainProvider.consumeGain();
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance
        .addPostFrameCallback((_) => unawaited(_checkForGains()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeHeader(),
      body: ListView(
        children: <Widget>[
          GamesCarousel(games: kDiscoverGames),
          HomeGamesList(games: kGames),
        ],
      ),
    );
  }
}
