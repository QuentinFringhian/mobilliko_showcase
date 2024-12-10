import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_game.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_introduction.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/components/banco_settings_button.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/providers/banco_selection_provider.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/settings/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';
import 'package:provider/provider.dart';

/// Displays the Banco game or introduction based on the user's selection.
///
/// Uses [BancoSelectionProvider] to manage the selection state. Shows
/// [BancoGame] if a selection is confirmed; otherwise, displays
/// [BancoIntroduction].
class BancoPage extends StatelessWidget {
  /// Creates a [BancoPage].
  const BancoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<BancoSelectionProvider>(
      create: (_) => BancoSelectionProvider(),
      child: Consumer<BancoSelectionProvider>(
        builder: (_, BancoSelectionProvider bancoSelectProvider, __) {
          final BancoType? selectedOption = bancoSelectProvider.selectedOption;

          return Stack(
            children: <Widget>[
              if (bancoSelectProvider.confiremedSelection &&
                  selectedOption != null)
                BancoGame(style: selectedOption)
              else
                const BancoIntroduction(),
              Positioned(
                right: kBancoSettingButtonPosition.right,
                top: kBancoSettingButtonPosition.top,
                child: const SafeArea(
                  child: BancoSettingsButton(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
