import 'package:flutter/material.dart';

class TextThemeBuilder {
  static TextTheme buildTextTheme(BuildContext context, double fontSize) {
    double baseFontSize = MediaQuery.of(context).textScaler.scale(fontSize);

    return TextTheme(
      displayLarge: TextStyle(fontSize: baseFontSize * 2.0),
      displayMedium: TextStyle(fontSize: baseFontSize * 1.75),
      displaySmall: TextStyle(fontSize: baseFontSize * 1.5),
      headlineMedium: TextStyle(fontSize: baseFontSize * 1.25),
      headlineSmall: TextStyle(fontSize: baseFontSize * 1.0),
      titleLarge: TextStyle(fontSize: baseFontSize * 0.875),
      titleMedium: TextStyle(fontSize: baseFontSize * 0.75),
      titleSmall: TextStyle(fontSize: baseFontSize * 0.625),
      bodyLarge: TextStyle(fontSize: baseFontSize * 1.0),
      bodyMedium: TextStyle(fontSize: baseFontSize * 0.875),
      bodySmall: TextStyle(fontSize: baseFontSize * 0.75),
      labelLarge: TextStyle(fontSize: baseFontSize * 0.875),
      labelSmall: TextStyle(fontSize: baseFontSize * 0.625),
    );
  }
}