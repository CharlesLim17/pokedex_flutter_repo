import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/ui/spacer/pokedex_spacer.dart';

class HomeHeader extends ConsumerWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;
    ColorScheme colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,

      // Content
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            PokedexSpacer(height: screenSize.height * 0.04),

            // Header text
            Text(
              "Welcome Back Trainer!",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontSize: 24,
                    color: colors.background,
                  ),
            ),

            // Complimentary text
            Text(
              "What Pokemon are you looking for?",
              style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    color: colors.background,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
