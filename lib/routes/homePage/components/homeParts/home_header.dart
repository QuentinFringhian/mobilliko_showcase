import 'package:flutter/material.dart';
import 'package:flutter_translate/flutter_translate.dart';
import 'package:mobilliko_showcase/routes/homePage/components/homeParts/home_user_infos.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/constants.dart';
import 'package:mobilliko_showcase/routes/homePage/styles/home/styles.dart';

/// Custom app bar for the home screen displaying the Illiko and FDJ logos.
/// Includes a separator text and the [HomeUserInfos] widget in the top right.
/// Implements [PreferredSizeWidget] to provide a standard AppBar height.
class HomeHeader extends StatelessWidget implements PreferredSizeWidget {
  /// Creates an instance of [HomeHeader].
  const HomeHeader({super.key});

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: <Widget>[
          const Image(image: kHomeIllikoLogoImage, width: kHomeIllikoLogoSize),
          kHomeHeaderImagesSeparatorGap,
          Text(translate('home.by'), style: kHomeLogoByTextStyle),
          const Image(image: kHomeFdjLogoImage, width: kHomeFdjLogoSize),
        ],
      ),
      actions: const <Widget>[
        Padding(
          padding: kHomeHeaderPaddingStyle,
          child: HomeUserInfos(),
        ),
      ],
    );
  }
}
