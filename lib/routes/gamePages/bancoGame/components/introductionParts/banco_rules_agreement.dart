import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_modal.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/modalParts/banco_modal_rules.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/modalParts/banco_modal_terms.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/styles.dart';

/// A stateless widget that displays a modal for agreeing to game rules and terms.
///
/// Shows a [BancoModal] with pages for game rules and terms, and a disclaimer text
/// at the bottom. The modal cannot be closed manually and advances to the next step
/// when the "Done" button is pressed.
class BancoRulesAgreement extends StatelessWidget {
  /// Creates a [BancoRulesAgreement] widget.
  ///
  /// The [goToNextstep] callback is required to proceed to the next step after
  /// the modal is completed.
  const BancoRulesAgreement({
    required this.goToNextstep,
    super.key,
  });

  /// Callback to move to the next step after the modal is completed.
  final VoidCallback goToNextstep;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(),
        BancoModal(
          isClosable: false,
          onDone: goToNextstep,
          pages: const <Widget>[
            BancoModalRules(),
            BancoModalTerms(),
          ],
        ),
        Text(
          translate('games.banco.disclaimer'),
          style: kBancoIntroductionDisclaimerTextStyle,
        ),
      ],
    );
  }
}
