import 'package:flutter/material.dart';
import 'package:pokedex_flutter_repo/themes/theme_color.dart';

class AppTheme {
  // constuctor
  const AppTheme({required this.context});

  final BuildContext context;

  // Theme Data
  ThemeData get themeData => ThemeData(
        useMaterial3: true,
        inputDecorationTheme: _inputDecoration,
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

  // Input Decoration Theme
  InputDecorationTheme get _inputDecoration => InputDecorationTheme(
        filled: true,
        fillColor: const Color(0xFF262626),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 1,
            color: Color(0xFFC1C1C1),
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Theme.of(context).colorScheme.error,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
      );

  // Costumize Text Style
  TextTheme get _textTheme => const TextTheme(
        // Labels
        labelSmall: TextStyle(
          fontFamily: 'Montserrat',
        ),

        labelMedium: TextStyle(
          fontFamily: 'Montserrat',
        ),

        labelLarge: TextStyle(
          fontFamily: 'Montserrat',
        ),

        // Headlines
        headlineSmall: TextStyle(
          fontFamily: 'Montserrat-Bold',
        ),

        headlineMedium: TextStyle(
          fontFamily: 'Montserrat-Bold',
        ),

        headlineLarge: TextStyle(
          fontFamily: 'Pokemon-Solid',
        ),

        // Titles
        titleLarge: TextStyle(
          fontFamily: 'Montserrat',
        ),
      );
}
