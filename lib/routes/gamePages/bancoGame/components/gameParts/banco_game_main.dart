import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_flat_button.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_scratch.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/game/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/flat_button_types.dart';
import 'package:mobilliko_showcase/routes/gamePages/utils/scratch_element_class.dart';
import 'package:provider/provider.dart';

/// A stateful widget that manages the main gameplay for the Banco game.
///
/// This widget handles displaying two scratch areas and a button that allows the user
/// to automatically reveal all scratch areas. It tracks whether each scratch area has been
/// completed and manages the game state accordingly.
class BancoGameMain extends StatefulWidget {
  /// Creates a [BancoGameMain] widget.
  ///
  /// The [scratchColor] defines the color of the scratch areas, and [flatButtonStyle]
  /// determines the appearance of the action button.
  const BancoGameMain({
    required this.scratchColor,
    required this.flatButtonStyle,
    super.key,
  });

  /// The color used for the scratchable area.
  final Color scratchColor;

  /// The style applied to the flat button.
  final FlatButtonType flatButtonStyle;

  @override
  State<BancoGameMain> createState() => _BancoGameMainState();
}

class _BancoGameMainState extends State<BancoGameMain> {
  final List<ScratchElement> _bancoScratches = <ScratchElement>[
    ScratchElement(gainValue: kBancoGameFirstGainValue),
    ScratchElement(gainValue: kBancoGameSecondGainValue),
  ];

  bool _isGameCompleted = false;
  Timer? _redirectTimer;

  bool _isGameCompletedCalculator() =>
      _bancoScratches.every((ScratchElement scratch) => scratch.isScratchedOff);

  double _totalGainsCalculator() => _bancoScratches.fold(
        0,
        (double sum, ScratchElement scratch) => sum + scratch.gainValue,
      );

  void _gameCompletedCb() {
    final GameGainprovider gameGainProvider = context.read<GameGainprovider>()
      ..resetReveal();
    _redirectTimer ??= Timer(
      const Duration(seconds: kBancoGameWinDelay),
      () => gameGainProvider.setNewGains(_totalGainsCalculator()),
    );
  }

  @override
  void dispose() {
    _redirectTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (final (int index, ScratchElement scratch)
            in _bancoScratches.indexed)
          Padding(
            padding: EdgeInsets.only(
              bottom: index != _bancoScratches.length
                  ? kBancoGameBetweenScratchPadding
                  : kBancoGameScratchBottomPadding,
            ),
            child: BancoScratch(
              scratchColor: widget.scratchColor,
              scratchTextImage: const Image(image: kBancoGameFirstScratchImage),
              text: translate(
                'games.banco.gain_prefix',
                args: <String, String>{'gainNumber': '${index + 1}'},
              ),
              gainValue: scratch.gainValue,
              onCompleted: () => setState(() {
                scratch.isScratchedOff = true;
                _isGameCompleted = _isGameCompletedCalculator();
                if (_isGameCompleted) {
                  _gameCompletedCb();
                }
              }),
            ),
          ),
        BancoFlatButton(
          style: widget.flatButtonStyle,
          disabled: _isGameCompleted,
          text: translate('games.banco.auto_button'),
          onTap: context.read<GameGainprovider>().autoReaveal,
        ),
      ],
    );
  }
}
