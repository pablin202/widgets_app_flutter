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
      title: 'Ui Controls',
      subTitle: 'UI Flutter controls',
      link: '/controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Page Views',
      subTitle: 'Intro tutorial',
      link: '/tutorial',
      icon: Icons.accessibility_rounded),
  MenuItem(
      title: 'InfiniteScroll and Pull to Refresh',
      subTitle: 'Lists',
      link: '/infinite',
      icon: Icons.list_outlined),
  MenuItem(
      title: 'Riverpod provider',
      subTitle: 'Riverpod sample counter screen',
      link: '/counter',
      icon: Icons.star_rate_rounded),
  MenuItem(
      title: 'Theme',
      subTitle: 'Theme changer',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined)
];
