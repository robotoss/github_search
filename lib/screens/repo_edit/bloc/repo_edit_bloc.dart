import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'repo_edit_event.dart';
part 'repo_edit_state.dart';

class RepoEditBloc extends Bloc<RepoEditEvent, RepoEditState> {
  @override
  RepoEditState get initialState => RepoEditInitial();

  @override
  Stream<RepoEditState> mapEventToState(
    RepoEditEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
