import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/features/history/widgets/history_cards_widget.dart';
import 'package:pokedex_flutter_repo/features/history/widgets/history_header_widget.dart';
import 'package:pokedex_flutter_repo/ui/spacer/pokedex_spacer.dart';

class HistoryScreen extends ConsumerWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;

    return Container(
      color: const Color(0xFF1C1C1C),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          const HistoryHeaderWidget(),

          //
          PokedexSpacer(height: screenSize.height * 0.02),

          // Cards
          const HistoryCardsWidget(),

          //
          PokedexSpacer(height: screenSize.height * 0.03),
        ],
      ),
    );
  }
}
