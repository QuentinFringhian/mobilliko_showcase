/// A scratch-off element with a [gainValue] and scratch state.
///
/// The [ScratchElement] holds a reward value and tracks if it has been scratched off.
class ScratchElement {
  /// Creates a [ScratchElement] with the given [gainValue].
  ScratchElement({required this.gainValue});

  /// The reward value of the scratch element.
  final double gainValue;

  /// Whether the element has been scratched off. Defaults to `false`.
  bool isScratchedOff = false;
}
