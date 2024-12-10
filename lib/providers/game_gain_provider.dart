import 'package:flutter/material.dart';

/// A provider class that tracks the total gains in a game,
/// the latest gain, and whether gains are automatically revealed.
///
/// This class extends [ChangeNotifier], allowing the UI to be
/// updated when the data changes.
class GameGainprovider with ChangeNotifier {
  double _totalCredits = 5;
  double _totalGains = 0;
  double? _latestGain;
  bool _automaticReaveal = false;

  /// The total credits set by the user.
  ///
  /// This value is updated when [spendCredits].
  double get totalCredits => _totalCredits;

  /// The total gains accumulated by the user.
  ///
  /// This value is updated when [consumeGain] or [silentConsumeGain] is called.
  double get totalGains => _totalGains;

  /// The most recent gain that has not been consumed yet.
  ///
  /// This is set via [setNewGains] and can be consumed with [consumeGain].
  double? get latestGain => _latestGain;

  /// Whether the gains are revealed automatically.
  ///
  /// Set to `true` when [autoReaveal] is called, and reset to `false` by [resetReveal].
  bool get automaticReaveal => _automaticReaveal;

  /// Sets the automatic reveal flag to true and notifies listeners.
  ///
  /// This will trigger an update in any UI elements listening to this provider.
  void autoReaveal() {
    _automaticReaveal = true;
    notifyListeners();
  }

  /// Resets the automatic reveal flag to false and notifies listeners.
  ///
  /// This can be used to stop automatically revealing gains.
  void resetReveal() {
    _automaticReaveal = false;
    notifyListeners();
  }

  /// Sets the latest gain and notifies listeners.
  ///
  /// This should be called whenever a new gain is made by the user.
  /// The new gain will remain available until it is consumed.
  void setNewGains(double newGain) {
    _latestGain = newGain;
    notifyListeners();
  }

  /// Deducts the specified amount from the total credits.
  ///
  /// If the total credits fall below zero, they are reset to 10.
  /// This method notifies listeners of the change.
  void spendCredits(double amount) {
    _totalCredits -= amount;
    if (_totalCredits <= 0) _totalCredits = 10;
    notifyListeners();
  }

  /// Consumes the latest gain by adding it to the total gains
  /// and clearing the latest gain.
  ///
  /// This method also notifies listeners of the change. If no
  /// latest gain is available, the method does nothing.
  void consumeGain() {
    if (_latestGain != null) {
      _totalGains += _latestGain!;
      _latestGain = null;
      notifyListeners();
    }
  }
}
