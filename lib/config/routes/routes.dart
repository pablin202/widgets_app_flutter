import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/presentation/screens/animated/animated_screen.dart';
import 'package:widget_app/presentation/screens/app_tutorial/app_tutorial_screen.dart';
import 'package:widget_app/presentation/screens/infinite_scroll/infinite_scroll_screen.dart';
import 'package:widget_app/presentation/screens/progress/progress_indicator_screen.dart';
import 'package:widget_app/presentation/screens/riverpod/sample_riverpod_screen.dart';
import 'package:widget_app/presentation/screens/screens.dart';
import 'package:widget_app/presentation/screens/snackbar/snackbar_screen.dart';
import 'package:widget_app/presentation/screens/theme_changer/theme_changer_screen.dart';
import 'package:widget_app/presentation/screens/ui_controls/ui_controls_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'buttons',
          builder: (BuildContext context, GoRouterState state) {
            return const ButtonsScreen();
          },
        ),
        GoRoute(
          path: 'cards',
          builder: (BuildContext context, GoRouterState state) {
            return const CardsScreen();
          },
        ),
        GoRoute(
          path: 'animated',
          builder: (BuildContext context, GoRouterState state) {
            return const AnimatedScreen();
          },
        ),
        GoRoute(
          path: 'infinite_scroll',
          builder: (BuildContext context, GoRouterState state) {
            return const InfiniteScrollScreen();
          },
        ),
        GoRoute(
          path: 'progress',
          builder: (BuildContext context, GoRouterState state) {
            return const ProgressIndicatorScreen();
          },
        ),
        GoRoute(
          path: 'snackbar',
          builder: (BuildContext context, GoRouterState state) {
            return const SnackBarScreen();
          },
        ),
        GoRoute(
          path: 'controls',
          builder: (BuildContext context, GoRouterState state) {
            return const UiControlsScreen();
          },
        ),
        GoRoute(
          path: 'tutorial',
          builder: (BuildContext context, GoRouterState state) {
            return const AppTutorialScreen();
          },
        ),
        GoRoute(
          path: 'infinite',
          builder: (BuildContext context, GoRouterState state) {
            return const InfiniteScrollScreen();
          },
        ),
        GoRoute(
          path: 'counter',
          builder: (BuildContext context, GoRouterState state) {
            return const CounterScreen();
          },
        ),
        GoRoute(
          path: 'theme-changer',
          builder: (BuildContext context, GoRouterState state) {
            return const ThemeChangerScreen();
          },
        )
      ],
    ),
  ],
);
