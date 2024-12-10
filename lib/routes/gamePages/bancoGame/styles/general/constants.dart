import 'package:flutter/material.dart';

// --- Paddings --- //

/// Padding values (top, bottom, left, right) for the Banco Modal.
const EdgeInsets kBancoModalPadding = EdgeInsets.fromLTRB(12, 32, 12, 52);

/// Horizontal padding for the Banco User Agreement section.
const double kBancoUserAgreementHorizontalPadding = 10;

/// Horizontal padding for the Banco Rules section.
const double kBancoRulesHorizontalPadding = 28;

/// Bottom padding for the Banco Flat Button.
const double kBancoFlatButtonBottomPadding = 4;

// --- Sizes --- //

/// Border size (top, bottom, left, right) for the Banco Modal.
const EdgeInsets kBancoModalBorderSize = EdgeInsets.fromLTRB(4, 3, 4, 9);

/// Size (width and height) of the Banco Modal.
const Size kBancoModalSize = Size(280, 348);

/// Size (width and height) of the Banco Triangle Button.
const Size kBancoTriangleButtonSize = Size(25, 33);

/// Size (width and height) of the Banco OK Button.
const Size kBancoOkButtonSize = Size(40, 25);

/// Size (width and height) of the Banco Rules Image.
const Size kBancoRulesImageSize = Size(126, 92);

/// Size (width and height) of the Banco Flat Button.
const Size kBancoFlatButtonSize = Size(150, 48);

/// Size (width and height) of the Banco Prize Image.
const Size kBancoPrizeImageSize = Size(184, 55);

/// Size of the Banco Close Button.
const double kBancoCloseSize = 33;

/// Size of the big star image.
const double kBancoBigStarSize = 275;

/// Size of the regular star image.
const double kBancoStarSize = 175;

// --- Sources --- //

/// Image provider for the Banco Rules image.
const ImageProvider kBancoRulesImage = AssetImage(
  'assets/images/banco/bancoPreviews/banco_rule_preview.png',
);

/// Image provider for the Banco Triangle Button.
const ImageProvider kBancoTriangleButtonImage =
    AssetImage('assets/images/banco/banco_triangle_button.png');

/// Image provider for the Banco OK Button.
const ImageProvider kBancoOkButtonImage =
    AssetImage('assets/images/banco/banco_ok_button.png');

/// Image provider for the Banco Close Button.
const ImageProvider kBancoCloseButtonImage =
    AssetImage('assets/images/banco/banco_close_button.png');

/// Image provider for the Banco star image.
const ImageProvider kBancoStarImage =
    AssetImage('assets/images/banco/blank_star.png');

/// Image provider for the Banco prize image.
const ImageProvider kBancoPrizeImage =
    AssetImage('assets/images/banco/prize.png');

/// Asset path for the pink version of the Banco Flat Button.
const String kBancoFlatButtonPinkPath =
    'assets/images/banco/flatButtons/flat_button_pink.png';

/// Asset path for the green version of the Banco Flat Button.
const String kBancoFlatButtonGreenPath =
    'assets/images/banco/flatButtons/flat_button_green.png';

/// Asset path for the orange version of the Banco Flat Button.
const String kBancoFlatButtonOrangePath =
    'assets/images/banco/flatButtons/flat_button_orange.png';

/// Asset path for the blue version of the Banco Flat Button.
const String kBancoFlatButtonBluePath =
    'assets/images/banco/flatButtons/flat_button_blue.png';

// --- Colors --- //

/// Filter color for the disabled state of the Banco Flat Button.
const Color kBancoFlatButtonDisabledFilterColor = Color(0xD02c2c2c);

/// Color used for the blue background in Banco Game.
const Color kBancoBlueColor = Color(0xff26387e);

/// Color used for the yellow accents in Banco Game.
const Color kBancoYellowColor = Color(0xfff9df4b);

/// Color used for the Banco stars, with white color and 30% opacity.
Color kBancoStarsColor = Colors.white.withOpacity(0.3);

// --- Font Sizes --- //

/// Font size for the text displayed on the Banco Flat Button.
const double kBancoFlatButtonFontSize = 18;

// --- Positions --- //

/// Position for the Banco Modal OK button, with bottom and right offsets.
const EdgeInsets kBancoModalOkPosition = EdgeInsets.only(bottom: 1, right: 2);

/// Position for the Banco Modal left alignment, with bottom and left offsets.
const EdgeInsets kBancoModalLeftPosition = EdgeInsets.only(bottom: 1, left: 2);

/// Position for the Banco Modal right alignment, with bottom and right offsets.
const EdgeInsets kBancoModalRightPosition =
    EdgeInsets.only(bottom: 1, right: 2);

/// Position for the Banco Prize image, with bottom and right offsets.
const EdgeInsets kBancoPrizePosition = EdgeInsets.only(bottom: 38, right: 38);

/// Position for the large star image in Banco Game, with right and top offsets.
const EdgeInsets kBancoBigStarPosition = EdgeInsets.only(right: -85, top: -20);

/// Position for the small star image in Banco Game, with right and top offsets.
const EdgeInsets kBancoSmallStarPosition = EdgeInsets.only(right: -33, top: 25);

/// Border radius for the modal in Banco Game.
const double kBancoGameModalRadius = 16;

// --- Offsets --- //

/// X offset for the Banco Modal close button.
const double kBancoModalCloseXOffset = 2;

/// Y offset for the Banco Modal close button.
const double kBancoModalCloseYOffset = -4;

// --- Font Sizes --- //

/// Font size for the title text in Banco Modals.
const double kBancoModalTitleFontSize = 15;

/// Font size for the regular text in Banco Modals.
const double kBancoModalTextFontSize = 12;
