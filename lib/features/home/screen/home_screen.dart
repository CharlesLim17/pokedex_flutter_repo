import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/features/home/widgets/home_header_widget.dart';
import 'package:pokedex_flutter_repo/ui/spacer/pokedex_spacer.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size screenSize = MediaQuery.of(context).size;
    // ColorScheme colors = Theme.of(context).colorScheme;

    return Container(
      color: const Color(0xFF202020),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          const HomeHeader(),

          //
          PokedexSpacer(height: screenSize.height * 0.022),
        ],
      ),
    );
  }
}
