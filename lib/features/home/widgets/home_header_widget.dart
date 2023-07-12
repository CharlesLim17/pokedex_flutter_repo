import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/ui/spacer/pokedex_spacer.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeHeaderWidget extends ConsumerWidget {
  const HomeHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;
    ColorScheme colors = Theme.of(context).colorScheme;

    return Stack(
      children: [
        Positioned(
          top: -50,
          right: -50,
          child: Opacity(
            opacity: 0.175,
            child: Image.asset(
              'assets/images/pokeball.png',
              width: 200,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),

        //
        Positioned(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              PokedexSpacer(height: screenSize.height * 0.135),

              // Header text
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GradientText(
                      "Welcome \nBack Trainer!",
                      style:
                          Theme.of(context).textTheme.headlineMedium!.copyWith(
                                fontSize: 40,
                              ),
                      colors: const [Color(0xFF0CFF60), Color(0xFF0091FB)],
                    ),

                    // Complimentary text
                    Text(
                      "What Pokemon are you looking for?",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: colors.background,
                            fontSize: 16,
                          ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // Search Field
              Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 13.5),
                child: TextField(
                  obscureText: false,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        color: Colors.white,
                      ),
                  decoration: InputDecoration(
                    // hint
                    hintText: 'Search Pokemon.',
                    hintStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: Colors.grey,
                        ),
                    //
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 16.0),

                    // Icon
                    prefixIcon: const Padding(
                      padding: EdgeInsets.only(left: 16.0, right: 4.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                ),
              ),

              //
            ],
          ),
        ),
      ],
    );
  }
}
