part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class InitialMainDataEvent extends HomeEvent{
  final BuildContext context;
  InitialMainDataEvent({@required this.context});
}

class SearchButtonPressedEvent extends HomeEvent{}