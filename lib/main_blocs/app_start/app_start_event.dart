part of 'app_start_bloc.dart';

@immutable
abstract class AppStartEvent {}

class CheckUserEvent extends AppStartEvent {
  final BuildContext context;
  CheckUserEvent({@required this.context});
}
