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
      subTitle: 'Fancy Card',
      link: '/cards',
      icon: Icons.credit_card)
];
