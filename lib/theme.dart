import 'package:flutter/material.dart';

// Defines the overall theme for the app
final ThemeData appTheme = ThemeData(
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Colors.orange,
    onPrimary: Colors.white,
    secondary: Colors.brown,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    surface: Color.fromARGB(255, 237, 114, 8),
    onSurface: Color.fromARGB(255, 58, 42, 36),
  ),
  iconTheme: const IconThemeData(color: Colors.brown), // turns icons to brown
);