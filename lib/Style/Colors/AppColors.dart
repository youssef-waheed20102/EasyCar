import 'package:flutter/material.dart';

class AppColors {
  // Primary color (generally used most frequently)
  static const Color primary = Color(0xFFCF395D); // Adjust as needed

  // Primary variations (for hover, pressed states, etc.)
  static const Color primaryVariant = Color(0xFF0069D9);

  // Secondary color (complementary or contrasting)
  static const Color secondary = Color(0xFFFFD700);

  // Secondary variations
  static const Color secondaryVariant = Color(0xFFFBC02D);

  // Background color (light or dark)
  static const Color background = Color(0xFFF1C6C6); // Adjust for light/dark theme

  // Text color (contrasting with background)
  static const Color darkText = Color(0xFF032F6E);
  static const Color link = Color(0xFF0B54BD);

  static const Color whiteText = Color(0xFFFFFFFF);

  // Error color (for warnings, negative actions)
  static const Color error = Color(0xFFDC3545);

  static const Color button = Color(0xFFCF395D);




  // ... Add more colors as needed

  // Create a light theme using the provided colors
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: primary,

      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: background,
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: darkText), // Adjust typography as needed
      ),
      appBarTheme: const AppBarTheme(
        color: primary,
        titleTextStyle: TextStyle(
          color: whiteText,
          fontSize: 20,
        ),
        iconTheme: IconThemeData(color: whiteText),

      ),
      // ... Customize other theme properties
    );
  }

  // Create a dark theme (if applicable)
  static ThemeData darkTheme() {
    return ThemeData(
      primaryColor: primary,

      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        brightness: Brightness.dark,
      ),
      scaffoldBackgroundColor: const Color(0xFF212121), // Adjust for dark theme
      textTheme: const TextTheme(
        bodyText1: TextStyle(color: Colors.white), // Adjust typography as needed
      ),
      appBarTheme: const AppBarTheme(
        color: primary, // Adjust app bar color
      ),
      // ... Customize other theme properties for dark mode
    );
  }
}
