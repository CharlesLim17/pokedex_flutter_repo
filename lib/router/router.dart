import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pokedex_flutter_repo/features/splash/splash_screen.dart';
import 'package:pokedex_flutter_repo/ui/global/bottom_navigation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

List<GoRoute> get routes => [
      // Splash Screen
      GoRoute(
        name: 'Splash',
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),

      // Bottom Navigation
      GoRoute(
        name: 'BottomNavigationScreen',
        path: '/bottomNavigation',
        builder: (context, state) => const BottomNavigationBarWidget(),
      ),

      // Home Screen
      // GoRoute(
      //   name: 'HomeScreen',
      //   path: '/',
      //   builder: (context, state) => const HomeScreen(),
      // ),

      // Profile Screen
      // GoRoute(
      //   name: 'ProfileScreen',
      //   path: '/profile',
      //   builder: (context, state) => const ProfileScreen(),
      // ),
    ];

@riverpod
GoRouter goRoute(GoRouteRef ref) {
  //
  FutureOr<String?> redirect(BuildContext context, GoRouterState state) async {
    return null;
  }

  return GoRouter(
    routes: routes,
    redirect: redirect,
    initialLocation: '/splash',
  );
}
