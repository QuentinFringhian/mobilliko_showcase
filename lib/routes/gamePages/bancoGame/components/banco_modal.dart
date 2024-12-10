import 'package:flutter/material.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/constants.dart';
import 'package:mobilliko_showcase/routes/gamePages/bancoGame/styles/general/styles.dart';

/// A modal widget that displays a series of pages with navigation controls.
///
/// Allows navigation through pages with arrow buttons and optionally
/// provides close and confirm actions.
class BancoModal extends StatefulWidget {
  /// Creates a [BancoModal] widget.
  ///
  /// The [pages] parameter is required.
  const BancoModal({
    required this.pages,
    this.isClosable = true,
    this.showOkButton = true,
    this.onClose,
    this.onDone,
    super.key,
  });

  /// The pages to display in the modal.
  final List<Widget> pages;

  /// Whether the modal can be closed using the close button. Defaults to true.
  final bool isClosable;

  /// Whether to show the "OK" button on the last page. Defaults to true.
  final bool showOkButton;

  /// Callback triggered when the close button is pressed.
  final VoidCallback? onClose;

  /// Callback triggered when the "OK" button is pressed on the last page.
  final VoidCallback? onDone;

  @override
  State<BancoModal> createState() => _BancoModalState();
}

class _BancoModalState extends State<BancoModal> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: kBancoModalSize.width,
          height: kBancoModalSize.height,
          decoration: kBancoModalDecoration,
          child: Padding(
            padding: kBancoModalPaddingStyle,
            child: widget.pages[_index],
          ),
        ),
        if (widget.isClosable)
          Positioned(
            right: 0,
            child: Transform.translate(
              offset: kBancoModalCloseOffset,
              child: GestureDetector(
                onTap: widget.onClose,
                child: const Image(
                  image: kBancoCloseButtonImage,
                  height: kBancoCloseSize,
                  width: kBancoCloseSize,
                ),
              ),
            ),
          ),
        if (widget.pages.length > 1 && _index < widget.pages.length - 1)
          Positioned(
            bottom: kBancoModalRightPosition.bottom,
            right: kBancoModalRightPosition.right,
            child: GestureDetector(
              onTap: () => setState(() {
                _index++;
              }),
              child: Image(
                image: kBancoTriangleButtonImage,
                height: kBancoTriangleButtonSize.height,
                width: kBancoTriangleButtonSize.width,
              ),
            ),
          ),
        if (widget.showOkButton && _index == widget.pages.length - 1)
          Positioned(
            bottom: kBancoModalOkPosition.bottom,
            right: kBancoModalOkPosition.right,
            child: GestureDetector(
              onTap: widget.onDone,
              child: Image(
                image: kBancoOkButtonImage,
                height: kBancoOkButtonSize.height,
                width: kBancoOkButtonSize.width,
              ),
            ),
          ),
        if (_index > 0)
          Positioned(
            bottom: kBancoModalLeftPosition.bottom,
            left: kBancoModalLeftPosition.left,
            child: Transform.flip(
              flipX: true,
              child: GestureDetector(
                onTap: () => setState(() {
                  _index--;
                }),
                child: Image(
                  image: kBancoTriangleButtonImage,
                  height: kBancoTriangleButtonSize.height,
                  width: kBancoTriangleButtonSize.width,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
