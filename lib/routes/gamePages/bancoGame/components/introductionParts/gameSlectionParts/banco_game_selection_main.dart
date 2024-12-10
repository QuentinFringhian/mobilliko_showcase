import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/introductionParts/gameSlectionParts/banco_game_option_card.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/providers/banco_selection_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/introduction/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';
import 'package:provider/provider.dart';

/// Displays the main selection area for Banco game options.
///
/// This widget presents the user with a set of option cards, each representing
/// a different Banco game style. The user can select one by tapping on a card.
/// The selection state is managed by [BancoSelectionProvider].
class BancoGameSelectionMain extends StatelessWidget {
  /// Creates a [BancoGameSelectionMain] widget.
  const BancoGameSelectionMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BancoSelectionProvider>(
      builder: (_, BancoSelectionProvider bancoSelectProvider, __) {
        final BancoType? selectedOption = bancoSelectProvider.selectedOption;

        return Wrap(
          spacing: kBancoIntroSelectCardsVerticalPadding,
          runSpacing: kBancoIntroSelectCardsHorizontalPadding,
          children: <Widget>[
            for (final BancoType option in bancoSelectProvider.bancoOptions)
              SizedBox(
                height: kBancoIntroSelectedCardSize,
                width: kBancoIntroSelectedCardSize,
                child: Center(
                  child: GestureDetector(
                    onTap: () => bancoSelectProvider.setSelectedOption(option),
                    child: BancoGameOptionCard(
                      zoomed: selectedOption == null ||
                          identical(selectedOption, option),
                      option: option,
                    ),
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
