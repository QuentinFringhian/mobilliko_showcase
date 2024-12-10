import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarousel/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/gameCarousel/styles.dart';

/// A widget that displays indicators for the game carousel.
///
/// It visually represents the current position within the carousel by showing
/// a set of indicators, with one highlighted to indicate the currently active
/// game card. The number of indicators corresponds to the number of games
/// in the carousel.
///
/// The indicator sizes and styles vary depending on whether they are selected
/// or unselected, providing a clear visual cue to users.
class GameCarouselIndicator extends StatelessWidget {
  /// Creates a `GameCarouselIndicator` widget.
  ///
  /// Requires the total number of indicators [size] and the current indicator
  /// [current] to highlight.
  const GameCarouselIndicator({
    required this.size,
    required this.current,
    super.key,
  });

  /// The total number of indicators to display.
  final int size;

  /// The index of the currently selected indicator.
  final int current;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(size, (int index) {
        if (index == current) {
          return Container(
            width: kGameCarouselSelectedIndicatorSize,
            height: kGameCarouselSelectedIndicatorSize,
            margin: kGameCarouselIndicatorMarginStyle,
            decoration: kGameCarouselIndicatorDecorationStyle,
          );
        }
        return Container(
          width: kGameCarouselIndicatorSize,
          height: kGameCarouselIndicatorSize,
          margin: kGameCarouselIndicatorMarginStyle,
          decoration: kGameCarouselUnselectedIndicatorDecorationStyle,
        );
      }),
    );
  }
}
