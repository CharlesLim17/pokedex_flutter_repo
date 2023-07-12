import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/ui/spacer/pokedex_spacer.dart';

class ProfileHeaderWidget extends ConsumerWidget {
  const ProfileHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;
    ColorScheme colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Cover Image and Avatar Image
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            // Cover
            SizedBox(
              width: double.infinity,
              height: 140,
              child: Image.asset(
                'assets/images/pokemon_cover_photo.png',
                fit: BoxFit.cover,
              ),
            ),

            // Avatar
            const Positioned(
              top: 80,
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage('assets/images/pokemon_trainer.jpg'),
              ),
            ),
          ],
        ),

        //
        PokedexSpacer(height: screenSize.height * 0.095),

        // Name & Title
        Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              // Name
              Text(
                "Ash Gary Oak Ketchum",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    color: colors.background,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 2),
              // Title
              Text(
                "Professional Pokémon Trainer",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: colors.background,
                      fontSize: 12,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
