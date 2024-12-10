import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/styles.dart';

/// A stateless widget that displays the rules of the Banco game in a modal.
///
/// Shows a title, explanatory text, an image, and winning conditions.
/// Text is translated using the `flutter_translate` package.
class BancoModalRules extends StatelessWidget {
  /// Creates a [BancoModalRules] widget.
  const BancoModalRules({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kBancoRulesPadding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            translate('games.banco.game_rules').toUpperCase(),
            style: kBancoModalTitleTextStyle,
          ),
          Text(
            translate('games.banco.explanation'),
            style: kBancoModalTextStyle,
          ),
          Image(
            image: kBancoRulesImage,
            width: kBancoRulesImageSize.width,
            height: kBancoRulesImageSize.height,
          ),
          Text(
            translate('games.banco.win_cond'),
            style: kBancoModalTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
