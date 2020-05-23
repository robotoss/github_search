import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:github_search/data/database/database_repo_search_dao.dart';
import 'package:github_search/data/repository/repository.dart';
import 'package:meta/meta.dart';

part 'app_start_event.dart';
part 'app_start_state.dart';

class AppStartBloc extends Bloc<AppStartEvent, AppStartState> {
  @override
  AppStartState get initialState => AppStartLoadingState();

  Repository _repository = Repository();

  // User data
  User user = User(
      id: 0,
      login: 'AppUser',
      nodeId: '',
      avatarUrl: 'assets/images/user_avatar.png',
      gravatarId: '',
      url: '',
      receivedEventsUrl: '',
      type: 'User');

  @override
  Stream<AppStartState> mapEventToState(
    AppStartEvent event,
  ) async* {
    if (event is CheckUserEvent) {
      //Try to get user from base
      try {
        await _repository.getUser(event.context);
      } catch (error) {
        //Create new user if error
        await _repository.createUser(event.context, user);
      }
    }
    yield AppStartInitialState();
  }
}
