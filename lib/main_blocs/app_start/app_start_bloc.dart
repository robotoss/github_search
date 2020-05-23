import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:github_search/data/database/database_repo_search_dao.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';

part 'app_start_event.dart';
part 'app_start_state.dart';

class AppStartBloc extends Bloc<AppStartEvent, AppStartState> {
  @override
  AppStartState get initialState => AppStartLoading();

  @override
  Stream<AppStartState> mapEventToState(
    AppStartEvent event,
  ) async* {
    if(event is CheckUserEvent){
      //Try to get user from base
      try {
        final user = '';
      } catch (error){
       //Create new user if error
      }
    }
    yield AppStartInitial();
  }
}
