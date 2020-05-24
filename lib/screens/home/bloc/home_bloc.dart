import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:github_search/data/database/database_repo_search_dao.dart';
import 'package:github_search/data/models/search_repos.dart';
import 'package:github_search/data/repository/repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState => HomeInitialState(
      textController: searchEditingController,
      reposList: reposList,
      userReposList: userReposList);

  TextEditingController searchEditingController = TextEditingController();

  static final RegExp nameRegExp = RegExp('[a-zA-Z]');

  Repository repository = Repository();

  List<ReposItem> reposList = List();

  List<ReposItem> userReposList = List();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is InitialMainDataEvent) {
      yield* _buildInitialMainDataEvent(event.context);
    }
    if (event is SearchButtonPressedEvent) {
      yield* _buildSearchButtonPressedEvent();
    }
  }

  Stream<HomeState> _buildInitialMainDataEvent(BuildContext context) async* {
    yield HomeLoadingState(isLoading: true);
    yield HomeInitialState(
        textController: searchEditingController,
        reposList: reposList,
        userReposList: userReposList);
    try {
      userReposList = await repository.getRepo(context);
      print(userReposList);
    } catch (error){
      userReposList = List();
    }
    yield HomeLoadingState(isLoading: false);
    yield HomeInitialState(
        textController: searchEditingController,
        reposList: reposList,
        userReposList: userReposList);
  }

  Stream<HomeState> _buildSearchButtonPressedEvent() async* {
    if (searchEditingController.text.isEmpty) {
      yield HomeFailureState(error: 'Text field is empty');
    } else if (searchEditingController.text.length < 3) {
      yield HomeFailureState(error: 'Min characters is 3');
    } else if (!nameRegExp.hasMatch(searchEditingController.text)) {
      yield HomeFailureState(error: 'Please use the Latin Alphabet');
    } else {
      yield HomeLoadingState(isLoading: true);
      yield HomeInitialState(
          textController: searchEditingController,
          reposList: reposList,
          userReposList: userReposList);

      try {
        var serverData =
            await repository.reposByName(searchEditingController.text);
        reposList = serverData.repoItems;
        yield HomeLoadingState(isLoading: false);
      } catch (error) {
        yield HomeLoadingState(isLoading: false);
        if (error is DioError) {
          yield HomeFailureState(error: error.message);
        } else {
          print('HOME_BLOC_ERROR: $error');
        }
      }
    }
    yield HomeInitialState(
        textController: searchEditingController,
        reposList: reposList,
        userReposList: userReposList);
  }
}
