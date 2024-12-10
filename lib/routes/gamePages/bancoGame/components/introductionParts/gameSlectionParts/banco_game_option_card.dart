import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';

/// A card displaying a Banco game option with animated selection effects.
///
/// The card's size and opacity change based on the [zoomed] state, indicating
/// whether the card is selected. The visual transitions are animated.
class BancoGameOptionCard extends StatelessWidget {
  /// Creates a [BancoGameOptionCard].
  const BancoGameOptionCard({
    required this.zoomed,
    required this.option,
    super.key,
  });

  /// Whether the card is in the selected (zoomed) state.
  final bool zoomed;

  /// The [BancoType] defining the content of the card.
  final BancoType option;

  @override
  Widget build(BuildContext context) {
    final double cardSize =
        zoomed ? kBancoIntroSelectedCardSize : kBancoIntroUnselectedCardSize;
    final double cardOpacity = zoomed
        ? kBancoIntroSelectedCardOpacity
        : kBancoIntroUnselectedCardOpacity;
    const Duration cardAnimationDuration =
        kBancoIntroSelectCardAnimationDuration;

    return AnimatedContainer(
      duration: cardAnimationDuration,
      width: cardSize,
      height: cardSize,
      curve: Curves.fastOutSlowIn,
      decoration: const BoxDecoration(),
      child: AnimatedOpacity(
        opacity: cardOpacity,
        duration: cardAnimationDuration,
        child: Image.asset(option.previewPath),
      ),
    );
  }
}
