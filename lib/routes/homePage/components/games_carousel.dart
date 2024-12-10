import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/components/gameCarouselParts/game_carousel_indicator.dart';
import 'package:mobilliko_showcase/routes/homePage/components/game_carousel_card.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarousel/constants.dart';
import 'package:mobilliko_showcase/utils/game_class.dart';

/// A carousel widget that displays a series of game cards.
/// It uses a `CarouselSlider` to allow horizontal scrolling between games.
///
/// The carousel supports auto-play and infinite scrolling if there is more than one game.
/// It also shows an indicator at the bottom to signify the current active game.
///
/// The carousel state is updated every time the user scrolls to a different game.
///
/// The widget expects a list of `GameClass` objects, each representing a game to display.
class GamesCarousel extends StatefulWidget {
  /// Creates a `GamesCarousel` widget.
  ///
  /// Takes a list of [GameClass] objects to be displayed in the carousel.
  const GamesCarousel({required this.games, super.key});

  /// The list of games to display in the carousel.
  final List<GameClass> games;

  @override
  State<GamesCarousel> createState() => _GamesCarouselState();
}

class _GamesCarouselState extends State<GamesCarousel> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          items: widget.games
              .map((GameClass game) => GameCarouselCard(game: game))
              .toList(),
          options: CarouselOptions(
            autoPlay: widget.games.length > 1,
            height: kGameCarouselHeightSize,
            enableInfiniteScroll: widget.games.length > 1,
            viewportFraction: 1,
            onPageChanged: (int index, CarouselPageChangedReason _) {
              setState(() => _current = index);
            },
          ),
        ),
        Positioned(
          bottom: kGameCarouselIndicatorBottomPosition,
          left: 0,
          right: 0,
          child: GameCarouselIndicator(
            size: widget.games.length,
            current: _current,
          ),
        ),
      ],
    );
  }
}
