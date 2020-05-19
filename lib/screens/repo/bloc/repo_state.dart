part of 'repo_bloc.dart';

abstract class RepoState extends Equatable {
  const RepoState();
}

class RepoInitial extends RepoState {
  @override
  List<Object> get props => [];
}
