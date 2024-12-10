import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/scratcherParts/banco_scratch_main.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/styles.dart';

/// A stateless widget that represents the Banco scratch card.
///
/// Displays a scratchable surface with a specific color, image, and text.
/// When the scratch is completed, the [onCompleted] callback is triggered.
class BancoScratch extends StatelessWidget {
  /// Creates a [BancoScratch] widget.
  ///
  /// All parameters are required to define the scratch area's appearance
  /// and behavior when the scratch is completed.
  const BancoScratch({
    required this.scratchColor,
    required this.scratchTextImage,
    required this.gainValue,
    required this.text,
    required this.onCompleted,
    super.key,
  });

  /// The color of the scratch area.
  final Color scratchColor;

  /// The image displayed under the scratchable surface.
  final Image scratchTextImage;

  /// The value associated with the scratch gain.
  final double gainValue;

  /// The text displayed along with the scratch area.
  final String text;

  /// The callback function that is triggered once the scratch area is fully revealed.
  final void Function() onCompleted;

  @override
  Widget build(BuildContext context) {
    return _BancoScratchDecoration(
      scratchColor: scratchColor,
      child: BancoScratchMain(
        scratchColor: scratchColor,
        scratchTextImage: scratchTextImage,
        text: text,
        gainValue: gainValue,
        onCompleted: onCompleted,
      ),
    );
  }
}

/// A private stateless widget that applies a visual decoration to the Banco scratch area.
///
/// This widget wraps the [BancoScratchMain] inside a decorated box with a specific
/// margin and size. It is not meant to be used directly outside of the [BancoScratch] widget.
class _BancoScratchDecoration extends StatelessWidget {
  /// Creates a [_BancoScratchDecoration] widget.
  ///
  /// The [scratchColor] defines the background color, and the [child]
  /// contains the main scratch content.
  const _BancoScratchDecoration({
    required this.scratchColor,
    required this.child,
  });

  /// The color of the scratch area background.
  final Color scratchColor;

  /// The [BancoScratchMain] widget that represents the main scratch functionality.
  final BancoScratchMain child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: kBancoGameScratchDecoration,
      child: Container(
        color: scratchColor,
        margin: kBancoGameScratchContainerMarginStyle,
        child: SizedBox(
          width: kBancoGameScratchSize.width,
          height: kBancoGameScratchSize.height,
          child: child,
        ),
      ),
    );
  }
}
