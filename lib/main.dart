import 'package:flutter/material.dart';
import 'package:github_search/style/main_theme.dart';
import 'package:provider/provider.dart';

import 'data/database/database_repo_search_dao.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(Provider<RepoSearchBaseDao>(
    create: (_) => RepoSearchDatabase().repoSearchBaseDao,
    child: MyApp(),
  ));
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
