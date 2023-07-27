import 'package:flutter/material.dart';
import 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';
import 'package:widget_app/presentation/screens/cards/cards_screen.dart';
import 'package:widget_app/presentation/screens/home/home_screen.dart';

export 'package:widget_app/presentation/screens/buttons/buttons_screen.dart';
export 'package:widget_app/presentation/screens/cards/cards_screen.dart';
export 'package:widget_app/presentation/screens/home/home_screen.dart';

sealed class Destination {
  final Widget widget;
  final String path;
  final String name;

  Destination(this.widget, this.path, this.name);
}

class Home extends Destination {
  Home(super.widget, super.path, super.name);
}

class Buttons extends Destination {
  Buttons(super.widget, super.path, super.name);
}

class Cards extends Destination {
  Cards(super.widget, super.path, super.name);
}

class Destinations {
  late final Home home = Home(const HomeScreen(), '/', 'home');
  late final Buttons buttons =
      Buttons(const ButtonsScreen(), 'buttons', 'buttons');
  late final Cards cards = Cards(const CardsScreen(), 'cards', 'cards');
}
