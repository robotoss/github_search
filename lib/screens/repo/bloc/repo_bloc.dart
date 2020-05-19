import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'repo_event.dart';
part 'repo_state.dart';

class RepoBloc extends Bloc<RepoEvent, RepoState> {
  @override
  RepoState get initialState => RepoInitial();

  @override
  Stream<RepoState> mapEventToState(
    RepoEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
