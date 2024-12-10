import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/providers/game_gain_provider.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/styles.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/number_formater.dart';
import 'package:provider/provider.dart';

/// Displays user credit balance and total gains in the home screen header.
/// This widget listens to [GameGainprovider] to reflect real-time updates.
/// It shows the total credits and gains formatted as a column of text.
class HomeUserInfos extends StatelessWidget {
  /// Creates an instance of [HomeUserInfos].
  const HomeUserInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<GameGainprovider>(
      builder: (_, GameGainprovider gameGainProvider, __) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              translate(
                'home.credits',
                args: <String, String>{
                  'credits': formatPrice(gameGainProvider.totalCredits),
                },
              ),
              style: kHomeUserInfoCreditsTextStyle,
            ),
            Text(
              'Gains : ${formatPrice(gameGainProvider.totalGains)} €',
              style: kHomeUserInfoTextStyle,
            ),
          ],
        );
      },
    );
  }
}
