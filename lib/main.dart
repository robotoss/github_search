import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/style/main_theme.dart';
import 'package:provider/provider.dart';

import 'data/database/database_repo_search_dao.dart';
import 'main_blocs/app_start/app_start_bloc.dart';
import 'screens/home/home_screen.dart';

void main() {
  runApp(Provider<RepoSearchBaseDao>(
    create: (_) => RepoSearchDatabase().repoSearchBaseDao,
    child: BlocProvider<AppStartBloc>(
        create: (context) {
          return AppStartBloc()..add(CheckUserEvent(context: context));
        },
        child: MyApp()),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github search',
      theme: defaultTheme,
      home: BlocBuilder<AppStartBloc, AppStartState>(builder: (context, state) {
        if (state is AppStartLoadingState) {
          return Container(
            color: Colors.white,
          );
        }
        if (state is AppStartInitialState) {
          return HomeScreen();
        } else {
          return Text('BLoC state error');
        }
      }),
    );
  }
}
