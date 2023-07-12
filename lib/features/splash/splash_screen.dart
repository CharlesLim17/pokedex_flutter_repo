import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  // Animation
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);

    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Redirect after 3.5 seconds
    Future.delayed(const Duration(milliseconds: 6500)).then(
      (value) async {
        context.goNamed('BottomNavigationScreen');
      },
    );

    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Image
                RotationTransition(
                  turns: animation,
                  child: SizedBox(
                    height: 180,
                    child: Image.asset(
                      'assets/images/pokeball_transparent_2.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),

                //
                const SizedBox(height: 16),

                // Text
                Text(
                  'Pokédex',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        fontSize: 40,
                        letterSpacing: 4,
                        color: const Color(0xFFFFCB05),
                      ),
                ),
              ],
            ),
          ),

          // Copyrighty
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.copyright_outlined,
                  size: 16,
                  color: Colors.white,
                ),
                const SizedBox(width: 4),
                Text(
                  'Charles Angelo Lim 2023',
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
