part of 'repo_info_bloc.dart';

abstract class RepoInfoEvent extends Equatable {
  const RepoInfoEvent();

  @override
  List<Object> get props => [];
}

class OpenUrlPressed extends RepoInfoEvent {
  final String url;
  OpenUrlPressed({@required this.url});

  @override
  List<Object> get props => [url];
}
