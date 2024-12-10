import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/introductionParts/banco_game_selection.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/introductionParts/banco_logo_splash.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/introductionParts/banco_rules_agreement.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/styles.dart';

/// A stateful widget that manages an introduction sequence for the Banco game.
///
/// Displays a series of introductory screens, including a logo splash,
/// rules agreement, and game selection. Users navigate through the steps
/// automatically as each screen completes.
class BancoIntroduction extends StatefulWidget {
  /// Creates a [BancoIntroduction] widget.
  const BancoIntroduction({super.key});

  @override
  State<BancoIntroduction> createState() => _BancoIntroductionState();
}

class _BancoIntroductionState extends State<BancoIntroduction> {
  int _index = 0;
  late List<Widget> _bancoIntroductionSteps;

  void _goToNextstep() {
    setState(() {
      _index++;
    });
  }

  @override
  void initState() {
    _bancoIntroductionSteps = <Widget>[
      BancoLogoSplash(goToNextstep: _goToNextstep),
      BancoRulesAgreement(goToNextstep: _goToNextstep),
      const BancoGameSelection(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: kBancoIntroBackgroundDecoration,
        child: SafeArea(
          child: _bancoIntroductionSteps[_index],
        ),
      ),
    );
  }
}
