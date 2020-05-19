import 'package:flutter/material.dart';
import 'package:github_search/style/main_theme.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github search',
      theme: defaultTheme,
      home: HomeScreen(),
    );
  }
}
