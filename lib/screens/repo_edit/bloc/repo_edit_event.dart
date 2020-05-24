part of 'repo_edit_bloc.dart';

abstract class RepoEditEvent extends Equatable {
  const RepoEditEvent();

  @override
  List<Object> get props => [];
}

class InitialMainDataEvent extends RepoEditEvent {
  final BuildContext context;
  InitialMainDataEvent({@required this.context});
}

class ChangeRepoTypeEvent extends RepoEditEvent {
  final String type;
  ChangeRepoTypeEvent({@required this.type});
}

class CheckBoxPressedEvent extends RepoEditEvent {}

class CreateRepositoryPressedEvent extends RepoEditEvent {
  final BuildContext context;
  CreateRepositoryPressedEvent({@required this.context});
}

