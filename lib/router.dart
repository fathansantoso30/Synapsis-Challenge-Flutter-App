import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:synapsis_challenge_app/a_screen.dart';
import 'package:synapsis_challenge_app/b_screen.dart';
import 'package:synapsis_challenge_app/navbar.dart';

// private navigators
final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
    initialLocation: '/screenA',
    navigatorKey: _rootNavigatorKey,
    routes: [
      ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) {
            return ScaffoldWithBottomNavBar(child: child);
          },
          routes: [
            GoRoute(path: '/screenA', builder: (context, state) => ScreenA()),
            GoRoute(
              path: '/screenB',
              builder: (context, state) => ScreenB(),
            )
          ])
    ]);
