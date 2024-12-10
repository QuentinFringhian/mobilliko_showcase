import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/styles.dart';

/// A stateless widget that displays the terms and conditions for the Banco game.
///
/// Shows a title, user agreement text, and underlined links to general conditions
/// and specific rules. Text is translated using the `flutter_translate` package.
class BancoModalTerms extends StatelessWidget {
  /// Creates a [BancoModalTerms] widget.
  const BancoModalTerms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          translate('games.banco.rules').toUpperCase(),
          style: kBancoModalTitleTextStyle,
        ),
        Padding(
          padding: kBancoUserAgreementPadding,
          child: Text(
            translate('games.banco.rules_complete'),
            textAlign: TextAlign.center,
            style: kBancoModalTextStyle,
          ),
        ),
        Text.rich(
          TextSpan(
            style: kBancoModalTextStyle,
            children: <TextSpan>[
              TextSpan(
                text: translate('games.banco.general_condition'),
                style: kBancoModalUnderlineTextStyle,
              ),
              const TextSpan(text: ' '),
              TextSpan(
                text: translate('games.banco.specific_rules'),
                style: kBancoModalUnderlineTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
