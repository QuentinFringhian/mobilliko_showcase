import 'package:mobilliko_showcase/routes/gamePages/bancoGame/utils/banco_types.dart';
import 'package:mobilliko_showcase/routes/homePage/utils/illiko_badge_types.dart';
import 'package:mobilliko_showcase/utils/game_class.dart';

/// An instance of [GameClass] representing the game "Banco".
GameClass kBanco = GameClass(
  name: 'Banco',
  maxGain: 5000,
  price: 1,
  backgroundImage: 'assets/images/banco/banco_background.jpg',
  logo: BancoTypes.pink.logoPath,
  isNew: true,
  illikoBadgeType: IllikoBadgeTypes.purple,
  redirectLink: '/banco',
);
