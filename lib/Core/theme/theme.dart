import 'dart:ui';
import 'package:flutter/material.dart';

class AppTheme {
  //Font Families
  static const _headingFont = 'Playfair9pt';
  static const _bodyFont = 'Lato';

  //Light Theme colors
  static const _lightPrimaryColor = Color(0xFF8E6C52); //Warm Sand / taupe
  static const _lightSecondaryColor = Color(0xFFC7B299); // Light beige
  static const _lightBackgroundColor = Color(0xFFFCF9F5); // Off-White
  static const _lightSurfaceColor = Colors.white;
  static const _lightErrorColor = Color(0xFFD84B4B); // Color Red
  static const _lightTextPrimaryColor = Color(0xFF333333); //Dark Gray
  static const _lightTextSecondaryColor = Color(0xFF757575); // Medium gray

  // Dark Theme Colors
  static const _darkPrimaryColor = Color(0xFFAA8A6C); // Warm Caramel
  static const _darkSecondaryColor = Color(0xFF6C5947); //Dark Taupe
  static const _darkBackgeoundColor = Color(0xFF19191A); //Almost Black
  static const _darkSurfaceColor = Color(0xFF292929); // Dark gray
  static const _darkErrorColor = Color(0xFFE57373); //Light Coral
  static const _darkTextPrimaryColor = Color(0xFFEFEFEF); //OfWhite
  static const _darkTextSecondaryColor = Color(0xFFB0B0B0); //Light Gray


  // Accent Colors (Shared between light and dark)
  static const accentRed = Color(0xFFCB4E56); // Rust Red
  static const accentGold = Color(0xFFD4AF37); //Rich Gold
  static const accentGreen = Color(0xFF68A678); //Sage green
  static const accentBlue = Color(0xFF4B6D8B) //State blue

  //Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    colorScheme: const ColorScheme.light(
      primary: _lightPrimaryColor,
      secondary: _lightSecondaryColor,
      surface: _lightSurfaceColor,
      error: _lightErrorColor,
      onPrimary: Colors.white,
      onSecondary: _lightTextPrimaryColor,
      onSurface: _lightTextPrimaryColor,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: _lightBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: _lightBackgroundColor,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: _headingFont,
        color: _lightTextPrimaryColor,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.5,
      ),
      iconTheme: IconThemeData(color: _lightPrimaryColor),
    ),
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        fontFamily: _headingFont,
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: _lightTextPrimaryColor,
        letterSpacing: 0.25,
      ),
      displayMedium: TextStyle(
        fontFamily: _headingFont,
        fontSize: 28,
      ),
    )
  );
}