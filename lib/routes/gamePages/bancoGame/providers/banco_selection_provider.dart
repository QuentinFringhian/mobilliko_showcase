import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';

/// A provider class that manages the selection of Banco game types
/// and tracks whether a selection has been confirmed.
///
/// This class extends [ChangeNotifier], allowing the UI to update when
/// the selection changes.
class BancoSelectionProvider with ChangeNotifier {
  BancoType? _selectedOption;
  bool _confiremedSelection = false;

  final List<BancoType> _bancoOptions = <BancoType>[
    BancoTypes.pink,
    BancoTypes.blue,
    BancoTypes.green,
    BancoTypes.orange,
  ];

  /// The available options for the Banco game.
  ///
  /// This list contains the different styles a user can choose from.
  List<BancoType> get bancoOptions => _bancoOptions;

  /// The currently selected Banco game option.
  ///
  /// This value changes when [setSelectedOption] is called.
  BancoType? get selectedOption => _selectedOption;

  /// Whether the user's selection has been confirmed.
  ///
  /// Set to `true` when [confirmSelection] is called.
  bool get confiremedSelection => _confiremedSelection;

  /// Sets or clears the selected option.
  ///
  /// If the option passed to this method matches the current selection,
  /// it will be deselected. Otherwise, it will become the new selection.
  void setSelectedOption(BancoType selectedOption) {
    if (selectedOption == _selectedOption) {
      _selectedOption = null;
      _confiremedSelection = false;
    } else {
      _selectedOption = selectedOption;
    }
    notifyListeners();
  }

  /// Confirms the current selection and notifies listeners.
  ///
  /// This method sets [confiremedSelection] to `true`, indicating the user
  /// has finalized their choice.
  void confirmSelection() {
    if (_selectedOption != null) {
      _confiremedSelection = true;
      notifyListeners();
    }
  }
}
