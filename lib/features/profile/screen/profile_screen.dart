import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/features/profile/widgets/profile_cards_widget.dart';
import 'package:pokedex_flutter_repo/features/profile/widgets/profile_header_widget.dart';
import 'package:pokedex_flutter_repo/ui/spacer/pokedex_spacer.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xFF1C1C1C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          const ProfileHeaderWidget(),

          //
          PokedexSpacer(height: screenSize.height * 0.02),

          // Cards
          const ProfileCardsWidget(),

          //
        ],
      ),
    );
  }
}
