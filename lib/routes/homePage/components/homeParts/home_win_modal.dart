import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/styles.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/number_formater.dart';
import 'package:provider/provider.dart';

/// A modal dialog that displays the user's latest gain in the game.
///
/// The [HomeWinModal] widget shows the amount of the latest gain and provides
/// additional messages based on the user's current credit status.
class HomeWinModal extends StatelessWidget {
  /// Creates a [HomeWinModal].
  ///
  /// The [latestGain] parameter is required and represents the most recent gain made by the user.
  const HomeWinModal({required this.latestGain, super.key});

  /// The latest gain made by the user, which will be displayed in the modal.
  final double latestGain;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      alignment: Alignment.topCenter,
      insetPadding: kHomeModalPaddingStyle,
      backgroundColor: kHomeModalViewBackgroundColor,
      child: Container(
        width: kHomeModalSize,
        padding: kHomeModalInternalPaddingStyle,
        decoration: kHomeModalDecoration,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              translate(
                'home.modal_title',
                args: <String, String>{'gain': formatPrice(latestGain)},
              ),
              textAlign: TextAlign.center,
              style: kHomeModalTitleTextStyle,
            ),
            kHomeModalElementSeparatorGap,
            if (context.watch<GameGainprovider>().totalCredits == 0)
              Padding(
                padding: kHomeModalElementSeparatorPaddingStyle,
                child: Text(
                  translate('home.modal_no_credits'),
                  textAlign: TextAlign.center,
                  style: kHomeModalTextStyle,
                ),
              ),
            Text(
              translate('home.modal_get_gain'),
              textAlign: TextAlign.center,
              style: kHomeModalTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
