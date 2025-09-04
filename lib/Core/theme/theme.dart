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
  static const _darkBackgroundColor = Color(0xFF19191A); //Almost Black
  static const _darkSurfaceColor = Color(0xFF292929); // Dark gray
  static const _darkErrorColor = Color(0xFFE57373); //Light Coral
  static const _darkTextPrimaryColor = Color(0xFFEFEFEF); //OfWhite
  static const _darkTextSecondaryColor = Color(0xFFB0B0B0); //Light Gray


  // Accent Colors (Shared between light and dark)
  static const accentRed = Color(0xFFCB4E56); // Rust Red
  static const accentGold = Color(0xFFD4AF37); //Rich Gold
  static const accentGreen = Color(0xFF68A678); //Sage green
  static const accentBlue = Color(0xFF4B6D8B); //State blue

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
        fontWeight: FontWeight.bold,
        color: _lightTextPrimaryColor,
      ),
      displaySmall: TextStyle(
        fontFamily: _headingFont,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: _lightTextPrimaryColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: _headingFont,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: _headingFont,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      titleMedium: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      titleSmall: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: _lightTextPrimaryColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: _lightTextPrimaryColor,
      ),
      bodySmall: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: _lightTextPrimaryColor,
      ),
      labelLarge: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightPrimaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
          fontFamily: _bodyFont,
          fontSize: 16, 
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _lightPrimaryColor,
        side: const BorderSide(color: _lightPrimaryColor, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
          fontFamily: _bodyFont,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _lightPrimaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
          fontFamily: _bodyFont,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5
        )
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding:  const EdgeInsets.all(16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _lightSecondaryColor.withOpacity(0.3), width: 1)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _lightPrimaryColor, width: 2),
      ),
      hintStyle: TextStyle(
        fontFamily: _bodyFont,
        color: _lightTextSecondaryColor.withOpacity(0.7),
        fontSize: 14,
      ),
      labelStyle: const TextStyle(
        fontFamily: _bodyFont,
        color: _lightTextPrimaryColor,
        fontSize: 16,
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: _lightSecondaryColor.withOpacity(0.15),
      selectedColor: _lightPrimaryColor.withOpacity(0.2),
      disabledColor: Colors.grey.shade200,
      labelStyle: const TextStyle(
        fontFamily: _bodyFont,
        color: _lightTextPrimaryColor,
        fontSize: 14,
      ),
      secondaryLabelStyle: const TextStyle(
        fontFamily: _bodyFont,
        color: Colors.white,
        fontSize: 14,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xFFEAE6E0),
      thickness: 1,
      space: 24,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: _lightPrimaryColor,
      unselectedItemColor: _lightTextSecondaryColor,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: _lightPrimaryColor,
      circularTrackColor: Color(0xFFEAE6E0),
      linearTrackColor: Color(0xFFEAE6E0),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: _lightPrimaryColor,
      inactiveTrackColor: _lightSecondaryColor.withOpacity(0.3),
      thumbColor: _lightPrimaryColor,
      overlayColor: _lightPrimaryColor,
      valueIndicatorTextStyle: const TextStyle(color: Colors.white),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states){
        if(states.contains(WidgetState.selected)) {
          return _lightPrimaryColor;
        }
        return null;
      }),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightPrimaryColor;
        }
        return null;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightPrimaryColor.withOpacity(0.3);
        }
        return null;
      })
    )
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    colorScheme: const ColorScheme.light(
      primary: _darkPrimaryColor,
      secondary: _darkSecondaryColor,
      surface: _darkSurfaceColor,
      error: _darkErrorColor,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: _darkTextPrimaryColor,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: _darkBackgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: _darkBackgroundColor,
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
        fontWeight: FontWeight.bold,
        color: _lightTextPrimaryColor,
      ),
      displaySmall: TextStyle(
        fontFamily: _headingFont,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: _lightTextPrimaryColor,
      ),
      headlineMedium: TextStyle(
        fontFamily: _headingFont,
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: _headingFont,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      titleMedium: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      titleSmall: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
      bodyLarge: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: _lightTextPrimaryColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: _lightTextPrimaryColor,
      ),
      bodySmall: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: _lightTextPrimaryColor,
      ),
      labelLarge: TextStyle(
        fontFamily: _bodyFont,
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: _lightTextPrimaryColor,
      ),
    ),
    cardTheme: CardTheme(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _lightPrimaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
          fontFamily: _bodyFont,
          fontSize: 16, 
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5,
        ),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: _lightPrimaryColor,
        side: const BorderSide(color: _lightPrimaryColor, width: 1.5),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
          fontFamily: _bodyFont,
          fontSize: 16,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: _lightPrimaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        textStyle: const TextStyle(
          fontFamily: _bodyFont,
          fontSize: 14,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.5
        )
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding:  const EdgeInsets.all(16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: _lightSecondaryColor.withOpacity(0.3), width: 1)
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: _lightPrimaryColor, width: 2),
      ),
      hintStyle: TextStyle(
        fontFamily: _bodyFont,
        color: _lightTextSecondaryColor.withOpacity(0.7),
        fontSize: 14,
      ),
      labelStyle: const TextStyle(
        fontFamily: _bodyFont,
        color: _lightTextPrimaryColor,
        fontSize: 16,
      ),
    ),
    chipTheme: ChipThemeData(
      backgroundColor: _lightSecondaryColor.withOpacity(0.15),
      selectedColor: _lightPrimaryColor.withOpacity(0.2),
      disabledColor: Colors.grey.shade200,
      labelStyle: const TextStyle(
        fontFamily: _bodyFont,
        color: _lightTextPrimaryColor,
        fontSize: 14,
      ),
      secondaryLabelStyle: const TextStyle(
        fontFamily: _bodyFont,
        color: Colors.white,
        fontSize: 14,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    ),
    dividerTheme: const DividerThemeData(
      color: Color(0xFFEAE6E0),
      thickness: 1,
      space: 24,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.white,
      selectedItemColor: _lightPrimaryColor,
      unselectedItemColor: _lightTextSecondaryColor,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: _lightPrimaryColor,
      circularTrackColor: Color(0xFFEAE6E0),
      linearTrackColor: Color(0xFFEAE6E0),
    ),
    sliderTheme: SliderThemeData(
      activeTrackColor: _lightPrimaryColor,
      inactiveTrackColor: _lightSecondaryColor.withOpacity(0.3),
      thumbColor: _lightPrimaryColor,
      overlayColor: _lightPrimaryColor,
      valueIndicatorTextStyle: const TextStyle(color: Colors.white),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith((states){
        if(states.contains(WidgetState.selected)) {
          return _lightPrimaryColor;
        }
        return null;
      }),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightPrimaryColor;
        }
        return null;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return _lightPrimaryColor.withOpacity(0.3);
        }
        return null;
      })
    )
  );
},