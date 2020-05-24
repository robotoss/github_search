import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:github_search/widgets/buttons/main_button.dart';
import 'package:github_search/widgets/dialogs/notification_dialog.dart';
import 'package:github_search/widgets/layers/load_layer.dart';
import 'package:github_search/widgets/textFields/main_text_field.dart';

import 'bloc/repo_edit_bloc.dart';

class RepoEditScreen extends StatelessWidget {
  const RepoEditScreen({Key key}) : super(key: key);

  static GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepoEditBloc>(
      create: (context) {
        return RepoEditBloc()..add(InitialMainDataEvent(context: context));
      },
      child: BlocListener<RepoEditBloc, RepoEditState>(
        listener: (context, state) {
          if (state is RepoEditFailureState) {
            _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
          }
          if (state is RepoEditLoadingState) {
            state.isLoading
                ? showLoadingLayer(context)
                : Navigator.pop(context);
          }
          if (state is RepoEditDialogState) {
            showCustomAlertDialog(context, state.message);
          }
        },
        child: Container(
          color: Colors.white,
          child: SafeArea(
            top: false,
            child: Scaffold(
                key: _scaffoldKey,
                appBar: AppBar(
                  title: Text('Create a new repository'),
                ),
                body: body(context)),
          ),
        ),
      ),
    );
  }

  Widget body(BuildContext context) {
    return BlocBuilder<RepoEditBloc, RepoEditState>(builder: (context, state) {
      if (state is RepoEditInitialState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                repoName(state),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Description',
                          style: TextStyle(fontWeight: FontWeight.w800)),
                      SizedBox(height: 10),
                      TextFieldMainWidget(
                        textController: state.descriptionTextController,
                        fieldName: '',
                      )
                    ],
                  ),
                ),
                Divider(),
                repoType(context, state),
                initReadMe(context, state),
                MainButtonWidget(
                    func: () => BlocProvider.of<RepoEditBloc>(context)
                        .add(CreateRepositoryPressedEvent(context: context)),
                    buttonTitle: 'Create repository'),
              ],
            ),
          ),
        );
      }
      if (state is RepoEditLoadingState || state is RepoEditFailureState) {
        return Container();
      } else {
        return Text('BLoC state error');
      }
    });
  }

  Widget repoName(RepoEditInitialState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Owner', style: TextStyle(fontWeight: FontWeight.w800)),
                  Text(state.user.login)
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text('/'),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Repository name',
                        style: TextStyle(fontWeight: FontWeight.w800)),
                    SizedBox(height: 10),
                    TextFieldMainWidget(
                      textController: state.nameTextController,
                      fieldName: '',
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
              'Great repository names are short and memorable. Need inspiration? How about glowing-octo-disco?'),
        ],
      ),
    );
  }

  Widget repoType(BuildContext context, RepoEditInitialState state) {
    return Container(
      child: Column(
        children: <Widget>[
          repoTypeItem(context, 'Public', state.isPrivate),
          repoTypeItem(context, 'Private', state.isPrivate),
          Divider()
        ],
      ),
    );
  }

  Widget repoTypeItem(BuildContext context, String type, bool isPrivate) {
    var _activeType = isPrivate ? 'Private' : 'Public';
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () => BlocProvider.of<RepoEditBloc>(context)
            .add(ChangeRepoTypeEvent(type: type)),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    width: 15,
                    height: 15,
                    decoration: _activeType == type
                        ? BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 5, color: Colors.blue))
                        : BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 1)),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(
                        'assets/icons_svg/${type == "Public" ? "ic_book" : "ic_lock"}.svg'),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          type,
                          style: TextStyle(
                              fontWeight: FontWeight.w800, fontSize: 16),
                        ),
                        Text(
                          type == "Public"
                              ? "Anyone can see this repository. You choose who can commit."
                              : "You choose who can see and commit to this repository.",
                          softWrap: true,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget initReadMe(BuildContext context, RepoEditInitialState state) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: GestureDetector(
        onTap: () =>
            BlocProvider.of<RepoEditBloc>(context).add(CheckBoxPressedEvent()),
        child: Container(
          color: Colors.transparent,
          child: Column(
            children: <Widget>[
              Text(
                  'Skip this step if you’re importing an existing repository.'),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Checkbox(
                      value: state.initReadMe,
                      onChanged: (bool checkBox) =>
                          BlocProvider.of<RepoEditBloc>(context)
                              .add(CheckBoxPressedEvent())),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Initialize this repository with a README',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        Text(
                            'This will let you immediately clone the repository to your computer.'),
                      ],
                    ),
                  )
                ],
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
