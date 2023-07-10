import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex_flutter_repo/router/router.dart';
import 'package:pokedex_flutter_repo/themes/theme.dart';

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(goRouteProvider);
    return MaterialApp.router(
      // Router
      routerConfig: router,

      // Remove Debug Mode Banner
      debugShowCheckedModeBanner: false,

      // Theme
      theme: AppTheme(context: context).themeData,
    );
  }
}
