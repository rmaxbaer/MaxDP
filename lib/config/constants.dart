import 'package:flutter/material.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import '/screens/home.dart';
import '/screens/review.dart';
import '/screens/profile.dart';

class AppColors {
  static Color get cWhite => const Color(0xFFFFFFFF);
  static Color get cBlackish => const Color(0xFF121212);
  static Color get cPrimaryColor => const Color(0xFFFFC690);
  static Color get cSecondaryColor => const Color(0xFFFFA149);
  static Color get cWarningText => const Color(0xFFEF3125);
  static Color get cPrimaryColorBorder => const Color(0xFFFFA450);
  static Color get cListItemBorder => const Color(0xFFCCCCCC);
  static Color get cLightGray => const Color(0xFFD9D9D9);
  static Color get cTextInputGray => const Color(0xFFD9D9D9);
}

class Fonts {
  static double get header1 => 32.0;
  static double get header2 => 22.0;
  static double get nameText => 20.0;
  static double get subtitle => 16.0;
  static double get smallText => 13.0;
  static double get smallestText => 10.0;
  static FontWeight get lightWeight => FontWeight.w400;
  static FontWeight get mediumWeight => FontWeight.w600;
  static FontWeight get heavyWeight => FontWeight.w700;
  static String get textFamily => 'Open Sans';
}

class Items {
  static const bottomNavigationBarItems = <_Item>[
    _Item(
      'Home',
      icon: PhosphorIcons.houseSimple,
      activeIcon: PhosphorIcons.houseSimpleFill,
      route: HomePage.id,
    ),
    _Item(
      'Review',
      icon: PhosphorIcons.plus,
      activeIcon: PhosphorIcons.plusFill,
      route: ReviewPage.id,
    ),
    _Item(
      'Profile',
      icon: PhosphorIcons.user,
      activeIcon: PhosphorIcons.userFill,
      route: ProfilePage.id,
    ),
  ];
}

class _Item {
  const _Item(this.label,
      {required this.icon, required this.activeIcon, required this.route});

  final String label;
  final IconData icon, activeIcon;
  final String route;
}
