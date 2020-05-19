part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitialEvent extends HomeState {
  final TextEditingController textController;

  HomeInitialEvent({@required this.textController});

  @override
  List<Object> get props => [textController];
}

class HomeFailureState extends HomeState {
  final String error;

  const HomeFailureState({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'HomeFailureState { error: $error }';
}
