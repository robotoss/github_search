
import 'package:flutter/material.dart';

final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  return ThemeData(
    fontFamily: 'SF Pro Display',
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: Colors.black)),
  );
}

class ColorPalette {
  static var colorRed = Color(0xFFFF2800);
}