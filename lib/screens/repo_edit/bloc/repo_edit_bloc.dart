import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:github_search/data/database/database_repo_search_dao.dart';
import 'package:github_search/data/repository/repository.dart';

part 'repo_edit_event.dart';
part 'repo_edit_state.dart';

class RepoEditBloc extends Bloc<RepoEditEvent, RepoEditState> {
  @override
  RepoEditState get initialState => RepoEditLoadingState(isLoading: null);

  static final RegExp nameRegExp = RegExp('[a-zA-Z]');

  TextEditingController nameTextController = TextEditingController();
  TextEditingController descriptionTextController = TextEditingController();

  bool isPrivate = false;
  String gitIgnore = '';
  String license = '';

  bool initReadMe = false;

  User user;

  Repository _repository = Repository();

  @override
  Stream<RepoEditState> mapEventToState(
    RepoEditEvent event,
  ) async* {
    if (event is InitialMainDataEvent) {
      yield* _buildInitialMainDataEvent(event.context);
    }
    if (event is ChangeRepoTypeEvent) {
      yield* _buildChangeRepoTypeEvent(event.type);
    }
    if (event is CheckBoxPressedEvent) {
      yield* _buildCheckBoxPressedEvent();
    }
    if (event is CreateRepositoryPressedEvent) {
      yield* _buildCreateRepositoryPressedEvent(event.context);
    }
  }

  Stream<RepoEditState> _buildInitialMainDataEvent(
      BuildContext context) async* {
    user = await _repository.getUser(context);

    yield RepoEditInitialState(
        nameTextController: nameTextController,
        descriptionTextController: descriptionTextController,
        isPrivate: isPrivate,
        gitIgnore: gitIgnore,
        license: license,
        initReadMe: initReadMe,
        user: user);
  }

  Stream<RepoEditState> _buildChangeRepoTypeEvent(String type) async* {
    if (type == 'Private') {
      isPrivate = true;
    } else {
      isPrivate = false;
    }

    yield RepoEditInitialState(
        nameTextController: nameTextController,
        descriptionTextController: descriptionTextController,
        isPrivate: isPrivate,
        gitIgnore: gitIgnore,
        license: license,
        initReadMe: initReadMe,
        user: user);
  }

  Stream<RepoEditState> _buildCheckBoxPressedEvent() async* {
    initReadMe = !initReadMe;

    yield RepoEditInitialState(
        nameTextController: nameTextController,
        descriptionTextController: descriptionTextController,
        isPrivate: isPrivate,
        gitIgnore: gitIgnore,
        license: license,
        initReadMe: initReadMe,
        user: user);
  }

  Stream<RepoEditState> _buildCreateRepositoryPressedEvent(
      BuildContext context) async* {
    if (nameTextController.text.isEmpty) {
      yield RepoEditFailureState(error: 'Repository name is empty');
    } else if (nameTextController.text.length < 3) {
      yield RepoEditFailureState(
          error: 'Min characters for Repository name is 3');
    } else if (!nameRegExp.hasMatch(nameTextController.text)) {
      yield RepoEditFailureState(error: 'Please use the Latin Alphabet');
    } else if (descriptionTextController.text.isEmpty) {
      yield RepoEditFailureState(error: 'Description field is empty');
    } else if (descriptionTextController.text.length < 10) {
      yield RepoEditFailureState(error: 'Min characters for description is 10');
    } else if (!nameRegExp.hasMatch(descriptionTextController.text)) {
      yield RepoEditFailureState(error: 'Please use the Latin Alphabet');
    } else {
      yield RepoEditLoadingState(isLoading: true);
      yield RepoEditInitialState(
          nameTextController: nameTextController,
          descriptionTextController: descriptionTextController,
          isPrivate: isPrivate,
          gitIgnore: gitIgnore,
          license: license,
          initReadMe: initReadMe,
          user: user);

      try {
        _repository.addNewRepo(
            context,
            RepoItem(
                id: null,
                userId: 0,
                nodeId: "MDEwOlJlcG9zaXRvcnkzMDgxMjg2",
                name: nameTextController.text,
                fullName: "${user.login}/${nameTextController.text}",
                private: isPrivate,
                htmlUrl: '',
                description: descriptionTextController.text,
                fork: false,
                url: '',
                createdAt: DateTime.now(),
                updatedAt: DateTime.now(),
                pushedAt: DateTime.now(),
                homepage: '',
                size: 524,
                stargazersCount: 1,
                watchersCount: 1,
                language: '',
                forksCount: 0,
                openIssuesCount: 0,
                masterBranch: "master",
                defaultBranch: "master",
                score: 1.0));
        yield RepoEditLoadingState(isLoading: false);
        yield RepoEditDialogState(message: 'Repository is created');
      } catch (error) {
        yield RepoEditLoadingState(isLoading: false);
        yield RepoEditFailureState(error: error.toString());
      }
    }

    yield RepoEditInitialState(
        nameTextController: nameTextController,
        descriptionTextController: descriptionTextController,
        isPrivate: isPrivate,
        gitIgnore: gitIgnore,
        license: license,
        initReadMe: initReadMe,
        user: user);
  }
}
