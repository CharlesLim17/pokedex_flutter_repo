import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/features/home/widgets/home_cards_widget.dart';
import 'package:pokedex_flutter_repo/features/home/widgets/home_header_widget.dart';
import 'package:pokedex_flutter_repo/features/home/widgets/home_news_widget.dart';
import 'package:pokedex_flutter_repo/ui/spacer/pokedex_spacer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xFF1C1C1C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          const HomeHeaderWidget(),

          //
          PokedexSpacer(height: screenSize.height * 0.022),

          // Cards
          const HomeCardsWidget(),

          //
          PokedexSpacer(height: screenSize.height * 0.03),

          // News
          const HomeNewsWidget(),

          //
          PokedexSpacer(height: screenSize.height * 0.015),
        ],
      ),
    );
  }
}
