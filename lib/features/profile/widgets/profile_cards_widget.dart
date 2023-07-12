import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/features/profile/widgets/profile_about_widget.dart';

class ProfileCardsWidget extends ConsumerWidget {
  const ProfileCardsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Trainer ID and Region
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Pokedex Card
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF2CBCB4)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TID: 204512735',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Opacity(
                        opacity: 0.75,
                        child: Image.asset(
                          'assets/images/pokeball.png',
                          width: 36,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // Moves Card
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFF38376)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Region: Kanto',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Opacity(
                        opacity: 0.75,
                        child: Image.asset(
                          'assets/images/pokeball.png',
                          width: 36,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          // No. of Badges and Pokemons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Pokedex Card
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFF5CBAE7)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Pokémons: 151',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Opacity(
                        opacity: 0.75,
                        child: Image.asset(
                          'assets/images/pokeball.png',
                          width: 36,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(width: 16),

              // Moves Card
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFFBD059)),
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Badges: 8',
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 12,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      Opacity(
                        opacity: 0.75,
                        child: Image.asset(
                          'assets/images/pokeball.png',
                          width: 36,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          const ProfileAboutWidget(),

          const SizedBox(height: 16),

          // Adventure start
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFF9C5CBC)),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Adventure started on April 1, 1997',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
                Opacity(
                  opacity: 0.75,
                  child: Image.asset(
                    'assets/images/pokeball.png',
                    width: 36,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          // Hall of fame
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xFFCA8179)),
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hall of fame debut on July 10, 2000',
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
                Opacity(
                  opacity: 0.75,
                  child: Image.asset(
                    'assets/images/pokeball.png',
                    width: 36,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ),

          //
        ],
      ),
    );
  }
}
