import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFF3B82F6);
  static final Color _darkContainerBackgroundColor = Color(0xFF293243);
  static final Color _lightContainerBackgroundColor = Color(0xFFFCFDFE);

  // Thème clair
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFFF4F6FB),
    colorScheme: const ColorScheme.light(
      primary: primaryColor,
      secondary: primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: _lightContainerBackgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.black87),
      titleTextStyle: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardTheme: CardThemeData(color: _lightContainerBackgroundColor),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(color: Colors.black87),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
    ),
  );

  // Thème sombre
  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    scaffoldBackgroundColor: const Color(0xFF0F172A),
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      secondary: primaryColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: _darkContainerBackgroundColor,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardTheme: CardThemeData(color: _darkContainerBackgroundColor),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(color: Colors.white70),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
      ),
    ),
  );
}
