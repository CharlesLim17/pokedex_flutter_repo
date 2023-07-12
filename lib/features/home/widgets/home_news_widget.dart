import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeNewsWidget extends ConsumerWidget {
  const HomeNewsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // News Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Pokémon News",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "View All",
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: Colors.blue.shade400,
                      fontSize: 16,
                    ),
              ),
            ],
          ),

          //
          const SizedBox(height: 16),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Newest Pokémon Region \nwill be Arriving Soon",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'July 10, 2020',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/pokemon_cover_photo.png',
                  height: 80,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),

          Divider(thickness: 0.5, color: Colors.grey.shade600),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Newest Pokémon Region \nwill be Arriving Soon",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'July 10, 2020',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/pokemon_cover_photo.png',
                  height: 80,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),

          Divider(thickness: 0.5, color: Colors.grey.shade600),

          //
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "The Newest Pokémon Region \nwill be Arriving Soon",
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'July 10, 2020',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Colors.white54,
                          fontSize: 10,
                        ),
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/pokemon_cover_photo.png',
                  height: 80,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
