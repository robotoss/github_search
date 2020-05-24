
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


final ThemeData defaultTheme = _buildDefaultTheme();

ThemeData _buildDefaultTheme() {
  return ThemeData(
    fontFamily: 'SF Pro Display',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        brightness: Brightness.dark),
  );
}

class ColorPalette {
  static var colorRed = Color(0xFFFF2800);
  static var mainTextField = Color(0xFFFAFBFC);
  static var mainTextFieldBorder = Color(0xFFD1D5DA);
}

class FormatsTheme {
   static DateFormat dateFormatter = DateFormat('yyyy MMMM dd – kk:mm');
  
}