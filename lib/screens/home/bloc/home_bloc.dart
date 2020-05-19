import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:github_search/data/repository/repository.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  @override
  HomeState get initialState =>
      HomeInitialEvent(textController: searchEditingController);

  TextEditingController searchEditingController = TextEditingController();

  static final RegExp nameRegExp = RegExp('[a-zA-Z]');

  Repository repository = Repository();

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is SearchButtonPressedEvent) {
      yield* _buildSearchButtonPressedEvent();
    }
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
      await repository.reposByName(searchEditingController.text);
      yield HomeLoadingState(isLoading: false);
    }
    yield HomeInitialEvent(textController: searchEditingController);
  }
}
