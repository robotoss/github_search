import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/data/models/search_repos.dart';
import 'package:github_search/screens/repo_edit/repo_edit_screen.dart';
import 'package:github_search/style/main_theme.dart';

import 'bloc/repo_info_bloc.dart';

class RepoInfoScreen extends StatelessWidget {
  final ReposItem repoData;
  final Function func;
  const RepoInfoScreen({Key key, @required this.repoData, @required this.func})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RepoInfoBloc>(
      create: (context) {
        return RepoInfoBloc();
      },
      child:
          BlocBuilder<RepoInfoBloc, RepoInfoState>(builder: (context, state) {
        return Container(
          color: Colors.white,
          child: SafeArea(
            top: false,
            child: Scaffold(
              appBar: AppBar(
                title: Text(repoData.name),
                actions: <Widget>[
                  repoData.owner.id == 0
                      ? IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () async {
                            await Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    RepoEditScreen(repoData: repoData)));
                            Navigator.pop(context);
                          })
                      : Container()
                ],
              ),
              body: body(context),
            ),
          ),
        );
      }),
    );
  }

  Widget body(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ownerPart(),
          projectDescriprion(),
          projectInfo(context)
        ],
      ),
    );
  }

  Widget ownerPart() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Owner:',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ownerItem('Type', repoData.owner.type),
                ownerItem('Login', repoData.owner.login),
                ownerItem('Id', repoData.owner.id.toString()),
              ],
            ),
            Container(
              height: 70,
              width: 70,
              child: repoData.owner.id == 0
                  ? Image.asset(repoData.owner.avatarUrl)
                  : CachedNetworkImage(
                      imageUrl: "${repoData.owner.avatarUrl}",
                      placeholder: (context, url) =>
                          CircularProgressIndicator(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
            ),
          ],
        ),
        Divider()
      ],
    );
  }

  Widget ownerItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(children: <Widget>[
        Text('$title:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        SizedBox(
          width: 20,
        ),
        Text(value ?? "Unknown", style: TextStyle(fontSize: 15))
      ]),
    );
  }

  Widget projectDescriprion() {
    return Column(
      children: <Widget>[Text(repoData.description), Divider()],
    );
  }

  Widget projectInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Created at:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        Text(
          FormatsTheme.dateFormatter.format(repoData.createdAt) ?? "Unknown",
        ),
        SizedBox(height: 10),
        Text('Language:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        Text(repoData.language ?? "Unknown"),
        SizedBox(height: 10),
        Text('Url:',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600)),
        GestureDetector(
          onTap: () => BlocProvider.of<RepoInfoBloc>(context)
              .add(OpenUrlPressed(url: repoData.htmlUrl)),
          child: Text(repoData.htmlUrl ?? "Unknown",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 15,
              )),
        ),
        Divider()
      ],
    );
  }
}
