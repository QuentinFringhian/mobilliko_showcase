import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/styles.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/number_formater.dart';
import 'package:provider/provider.dart';
import 'package:scratcher/widgets.dart';
import 'package:stroke_text/stroke_text.dart';

/// A stateful widget that provides a scratchable area with customizable text and gain value.
///
/// The widget displays a scratchable area where users can reveal hidden content. It highlights
/// the gain value if it meets a certain threshold and triggers a callback when scratching is completed.
class BancoScratchMain extends StatefulWidget {
  /// Creates a [BancoScratchMain] widget.
  ///
  /// The [scratchColor] defines the color of the scratch area.
  /// The [scratchTextImage] is the image displayed under the scratchable surface.
  /// The [text] is the label shown alongside the gain value.
  /// The [gainValue] is the value revealed upon scratching.
  /// The [onCompleted] callback is triggered when the scratch area is fully revealed.
  const BancoScratchMain({
    required this.scratchColor,
    required this.scratchTextImage,
    required this.text,
    required this.gainValue,
    required this.onCompleted,
    super.key,
  });

  /// The color of the scratchable area.
  final Color scratchColor;

  /// The image displayed under the scratchable surface.
  final Image scratchTextImage;

  /// The label shown alongside the gain value.
  final String text;

  /// The value revealed upon scratching.
  final double gainValue;

  /// Callback triggered when the scratch area is fully revealed.
  final void Function() onCompleted;

  @override
  State<BancoScratchMain> createState() => _BancoScratchMainState();
}

class _BancoScratchMainState extends State<BancoScratchMain> {
  bool _highlightGainValue = false;
  bool _automaticScratch = false;

  void _updateGainStyle() {
    setState(() {
      _automaticScratch = true;
      if (widget.gainValue >= kBancoGameGainValueHighlightMin) {
        _highlightGainValue = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final String gainValueText =
        '${formatPrice(widget.gainValue)} ${translate("other.currency")}';
    return Scratcher(
      color: widget.scratchColor,
      image: widget.scratchTextImage,
      threshold: kBancoGameScratchTreshold,
      autoScratching: _automaticScratch ||
          context.read<GameGainprovider>().automaticReaveal,
      onThreshold: () {
        widget.onCompleted();
        _updateGainStyle();
      },
      child: Container(
        width: kBancoGameScratchingAreaSize.width,
        height: kBancoGameScratchingAreaSize.height,
        color: kBancoGameScratchGainBackgroundColor,
        child: Padding(
          padding: kBancoGameScratchGainPaddingStyle,
          child: Row(
            children: <Widget>[
              Text(
                widget.text.toUpperCase(),
                style: kBancoGameScratchGainSuffixTextStyle,
              ),
              kBancoGameScratchGainValueLeftGap,
              if (_highlightGainValue)
                StrokeText(
                  text: gainValueText,
                  textStyle: kBancoGameScratchGainHightLightTextStyle,
                  strokeColor: Colors.white,
                )
              else
                Text(
                  gainValueText,
                  style: kBancoGameScratchGainTextStyle,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
