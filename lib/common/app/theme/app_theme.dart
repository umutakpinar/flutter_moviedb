import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color.fromARGB(1, 46, 42, 50);
  static const searchbarBackgroundColor = Color.fromARGB(255,58,63,71);
  static const searchbarHintTextColor = Color.fromARGB(255,103,104,109);
  
  static ColorScheme fromBrightness({required Brightness brightness}) {
    return ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: primaryColor,
      // Customisation goes here
    );
  }
}
