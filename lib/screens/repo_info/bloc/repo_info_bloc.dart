import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

part 'repo_info_event.dart';
part 'repo_info_state.dart';

class RepoInfoBloc extends Bloc<RepoInfoEvent, RepoInfoState> {
  @override
  RepoInfoState get initialState => RepoInfoInitial();

  @override
  Stream<RepoInfoState> mapEventToState(
    RepoInfoEvent event,
  ) async* {
    if (event is OpenUrlPressed) {
      yield* _buildOpenUrlPressed(event.url);
    }
  }

  Stream<RepoInfoState> _buildOpenUrlPressed(String url) async* {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
