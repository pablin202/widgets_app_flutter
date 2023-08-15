import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Buttons',
      subTitle: 'List of Flutter' 's buttons',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Cards',
      subTitle: 'Fancy Cards',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generals and controlled',
      link: '/progress',
      icon: Icons.refresh_outlined),
  MenuItem(
      title: 'SnackBar',
      subTitle: 'Screens Indicators',
      link: '/snackbar',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subTitle: 'Custom Animations',
      link: '/animated',
      icon: Icons.animation),
  MenuItem(
      title: 'Tutorial',
      subTitle: 'Fancy Cards',
      link: '/tutorial',
      icon: Icons.book),
  MenuItem(
      title: 'Cards',
      subTitle: 'Fancy Cards',
      link: '/cards',
      icon: Icons.credit_card)
];
