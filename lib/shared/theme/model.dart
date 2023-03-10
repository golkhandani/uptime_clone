import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color background = Color.fromARGB(255, 10, 4, 3);
const Color backgroundLight = Color.fromARGB(255, 238, 238, 238);
const Color splash = Color(0xFF3F51B5);
const Color splashShadow = Color(0xFF303F9F);
const Color secondary = Color(0xFF00BCD4);
const Color secondaryLight = Color(0xFF00BCD4);
const Color secondaryDark = Color.fromARGB(255, 1, 150, 170);
const Color secondaryShadow = Color.fromARGB(255, 32, 220, 241);
const Color swatch = Color(0xffbb4430);
const Color primary = Color(0xffbb4430);
const Color primaryLight = Color(0xffbb4430);
const Color primaryDark = Color(0xffbb4430);
const Color primaryShadow = Color(0xffbb4430);
const Color error = Color(0xFFFF5722);
const Color errorShadow = Color(0xFFE64A19);
const Color success = Color(0xFF009688);
const Color successShadow = Color(0xFF00796B);
const Color lightText = Color(0xFFFFFFFF);
const Color darkText = Color(0xFF000000);

final ThemeData ultravioletTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: background,
  primaryColor: primary,
  splashColor: primary.withOpacity(0.2),
  highlightColor: Colors.transparent,
  canvasColor: primary,
  shadowColor: primaryShadow,
  hintColor: primaryLight,
  fontFamily: GoogleFonts.cabin().fontFamily,
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.1,
    ),
    bodyLarge: TextStyle(
      color: lightText,
    ),
    bodyMedium: TextStyle(
      color: lightText,
    ),
    bodySmall: TextStyle(
      color: lightText,
    ),
    labelMedium: TextStyle(
      color: lightText,
    ),
    headlineSmall: TextStyle(
      color: lightText,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
    headlineLarge: TextStyle(
      color: lightText,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: primary,
    textTheme: ButtonTextTheme.primary,
  ),
  cardTheme: const CardTheme(
    color: secondary,
    elevation: 5.0,
  ),
  iconTheme: const IconThemeData(color: lightText),
  toggleButtonsTheme: const ToggleButtonsThemeData(
    fillColor: Color(0xFFF9A3B6),
    selectedColor: Color(0xFFF48FB1),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    hintStyle: TextStyle(color: primaryLight),
    labelStyle: TextStyle(color: primary),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: primary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.red),
    ),
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: Color(0xFFA8D67D),
    inactiveTrackColor: Color(0xFF9B9B9B),
    thumbColor: Color(0xFFD1EBBB),
    overlayColor: Color(0xFF6DA872),
    valueIndicatorColor: Color(0xFFF48FB1),
  ),
);

final ThemeData ultravioletLightTheme = ThemeData(
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: backgroundLight,
  primaryColor: primary,
  splashColor: primary.withOpacity(0.2),
  highlightColor: Colors.transparent,
  canvasColor: primary,
  shadowColor: primaryShadow,
  hintColor: primaryLight,
  fontFamily: GoogleFonts.cabin().fontFamily,
  textTheme: const TextTheme(
    displayMedium: TextStyle(
      fontSize: 15,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.1,
    ),
    bodyLarge: TextStyle(
      color: darkText,
    ),
    bodyMedium: TextStyle(
      color: darkText,
    ),
    bodySmall: TextStyle(
      color: darkText,
    ),
    labelMedium: TextStyle(
      color: darkText,
    ),
    headlineSmall: TextStyle(
      color: darkText,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
    headlineLarge: TextStyle(
      color: darkText,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.2,
    ),
  ),
  buttonTheme: const ButtonThemeData(
    buttonColor: primary,
    textTheme: ButtonTextTheme.primary,
  ),
  cardTheme: const CardTheme(
    color: secondary,
    elevation: 5.0,
  ),
  iconTheme: const IconThemeData(color: darkText),
  toggleButtonsTheme: const ToggleButtonsThemeData(
    fillColor: Color(0xFFF9A3B6),
    selectedColor: Color(0xFFF48FB1),
  ),
  inputDecorationTheme: const InputDecorationTheme(
    filled: true,
    fillColor: Colors.transparent,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    hintStyle: TextStyle(color: primaryLight),
    labelStyle: TextStyle(color: primary),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(
        color: primary,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: primary),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.red),
    ),
  ),
  sliderTheme: const SliderThemeData(
    activeTrackColor: Color(0xFFA8D67D),
    inactiveTrackColor: Color(0xFF9B9B9B),
    thumbColor: Color(0xFFD1EBBB),
    overlayColor: Color(0xFF6DA872),
    valueIndicatorColor: Color(0xFFF48FB1),
  ),
  colorScheme: const ColorScheme(
    primary: primary,
    primaryContainer: primaryDark,
    secondary: secondary,
    secondaryContainer: secondaryDark,
    surface: background,
    background: background,
    error: error,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
);

enum ThemeName { dark, light }

class UptimeTheme {
  final ThemeName name;
  final ThemeData themeData;

  UptimeTheme({
    required this.name,
    required this.themeData,
  });

  static const radius = Radius.circular(8);

  static final borderRadius = BorderRadius.circular(8);

  static const rightRadius = BorderRadius.only(
    topRight: Radius.circular(8),
    bottomRight: Radius.circular(8),
  );
  static const leftRadius = BorderRadius.only(
    topLeft: Radius.circular(8),
    bottomLeft: Radius.circular(8),
  );

  factory UptimeTheme.light() => UptimeTheme(
        name: ThemeName.light,
        themeData: ultravioletLightTheme,
      );
  factory UptimeTheme.dark() => UptimeTheme(
        name: ThemeName.dark,
        themeData: ultravioletTheme,
      );
}
