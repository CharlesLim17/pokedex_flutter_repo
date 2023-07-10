import 'package:flutter/material.dart';
import 'package:pokedex_flutter_repo/themes/theme_color.dart';

class AppTheme {
  // constuctor
  const AppTheme({required this.context});

  final BuildContext context;

  // Theme Data
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        textTheme: _textTheme,
        colorSchemeSeed: ThemeColor.primary,
      );

  // Application Color Scheme
  ColorScheme get colorScheme => ColorScheme.fromSeed(
        seedColor: ThemeColor.primary,
        secondary: ThemeColor.secondary,
        tertiary: ThemeColor.tertiary,
        background: ThemeColor.background,
      );

  // Costumize Text Style
  TextTheme get _textTheme => const TextTheme(
        // Labels
        labelSmall: TextStyle(
          fontFamily: 'Lato',
        ),

        labelMedium: TextStyle(
          fontFamily: 'Lato',
        ),

        labelLarge: TextStyle(
          fontFamily: 'Lato',
        ),

        // Headlines
        headlineSmall: TextStyle(
          fontFamily: 'Lato-Black',
        ),

        headlineMedium: TextStyle(
          fontFamily: 'Lato-Black',
        ),

        headlineLarge: TextStyle(
          fontFamily: 'Lato-Black',
        ),

        // Titles
        titleLarge: TextStyle(
          fontFamily: 'Lato',
        ),
      );
}
