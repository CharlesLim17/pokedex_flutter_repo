import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Redirect after 3.5 seconds
    Future.delayed(const Duration(milliseconds: 3500)).then(
      (value) async {
        context.goNamed('BottomNavigationScreen');
      },
    );

    // Splash widget
    return Scaffold(
      backgroundColor: Colors.black26,

      // Background
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF322F2F),
              Color(0xFF191414),
            ],
          ),
        ),

        // Content
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Loading
            CircularProgressIndicator(
              color: Color(0xFF2B74C7),
              strokeWidth: 4,
            ),
          ],
        ),
      ),
    );
  }
}
