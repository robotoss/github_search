part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialState extends HomeState {
  final TextEditingController textController;
  final List<ReposItem> reposList;
  final List<ReposItem> userReposList;

  HomeInitialState(
      {@required this.textController,
      @required this.reposList,
      @required this.userReposList});

  @override
  List<Object> get props => [textController, reposList, userReposList];
}

class HomeLoadingState extends HomeState {
  final bool isLoading;

  const HomeLoadingState({@required this.isLoading});

  @override
  List<Object> get props => [isLoading];

  @override
  String toString() => 'HomeLoadingState { isLoading: $isLoading }';
}

class HomeFailureState extends HomeState {
  final String error;

  const HomeFailureState({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'HomeFailureState { error: $error }';
}
