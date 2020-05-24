part of 'repo_edit_bloc.dart';

abstract class RepoEditState extends Equatable {
  const RepoEditState();

  @override
  List<Object> get props => [];
}

class RepoEditInitialState extends RepoEditState {
  final TextEditingController nameTextController;
  final TextEditingController descriptionTextController;
  final String repoType;
  final String gitIgnore;
  final String license;
  final bool initReadMe;
  final User user;

  RepoEditInitialState({
    @required this.nameTextController,
    @required this.descriptionTextController,
    @required this.repoType,
    @required this.gitIgnore,
    @required this.license,
    @required this.initReadMe,
    @required this.user,
  });

  @override
  List<Object> get props => [
        nameTextController,
        descriptionTextController,
        repoType,
        gitIgnore,
        license,
        initReadMe
      ];
}

class RepoEditLoadingState extends RepoEditState {
  final bool isLoading;

  const RepoEditLoadingState({@required this.isLoading});

  @override
  List<Object> get props => [isLoading];

  @override
  String toString() => 'RepoEditLoadingState { isLoading: $isLoading }';
}

class RepoEditFailureState extends RepoEditState {
  final String error;

  const RepoEditFailureState({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'RepoEditFailureState { error: $error }';
}
