part of 'repo_info_bloc.dart';

abstract class RepoInfoState extends Equatable {
  const RepoInfoState();
}

class RepoInfoInitial extends RepoInfoState {
  @override
  List<Object> get props => [];
}
