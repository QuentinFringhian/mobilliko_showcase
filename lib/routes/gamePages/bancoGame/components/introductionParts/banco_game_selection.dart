import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_flat_button.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/introductionParts/gameSlectionParts/banco_game_selection_main.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/providers/banco_selection_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/styles.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/flat_button_types.dart';
import 'package:provider/provider.dart';
import 'package:stroke_text/stroke_text.dart';

/// Displays the selection screen for the Banco game.
///
/// This widget allows the user to choose a game style via the [BancoGameSelectionMain]
/// widget and includes a confirm button at the bottom for finalizing the selection.
/// It uses stroke text for the title and translates it based on the user's locale.
class BancoGameSelection extends StatelessWidget {
  /// Creates a [BancoGameSelection] widget.
  const BancoGameSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StrokeText(
          text: translate('games.banco.choose').toUpperCase(),
          strokeWidth: kBancoIntroSelectTitleStrokeWidth,
          strokeColor: kBancoBlueColor,
          textStyle: kBancoIntroSelectTitleTextStyle,
        ),
        kBancoIntroductionSelectionTopGap,
        const BancoGameSelectionMain(),
        kBancoIntroductionSelectionBottomGap,
        const _BancoSelectionConfirmButton(),
      ],
    );
  }
}

class _BancoSelectionConfirmButton extends StatelessWidget {
  const _BancoSelectionConfirmButton();

  @override
  Widget build(BuildContext context) {
    return Consumer<BancoSelectionProvider>(
      builder: (_, BancoSelectionProvider bancoSelectProvider, __) {
        final BancoType? selectedOption = bancoSelectProvider.selectedOption;

        return BancoFlatButton(
          text: translate('games.banco.play'),
          style: selectedOption != null
              ? selectedOption.flatButtonStyle
              : FlatButtonTypes.green,
          disabled: selectedOption == null,
          onTap: bancoSelectProvider.confirmSelection,
        );
      },
    );
  }
}
