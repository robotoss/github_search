import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:github_search/data/models/search_repos.dart';
import 'package:github_search/widgets/layers/load_layer.dart';

import 'bloc/home_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  static GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) {
        return HomeBloc();
      },
      child: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state is HomeFailureState) {
            _scaffoldKey.currentState.showSnackBar(
              SnackBar(
                content: Text(state.error),
                backgroundColor: Colors.red,
              ),
            );
          }
          if (state is HomeLoadingState) {
            state.isLoading
                ? showLoadingLayer(context)
                : Navigator.pop(context);
          }
        },
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return  Container(
            color: Colors.white,
            child: SafeArea(
              top: false,
              child: Scaffold(
                key: _scaffoldKey,
                appBar: searchAppBar(context),
                body: body(context, state),
                floatingActionButton: fab(context),
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget searchAppBar(
    BuildContext context,
  ) {
    return AppBar(
      title: Container(
        height: 40,
        child: TextField(
          controller:
              BlocProvider.of<HomeBloc>(context).searchEditingController,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Enter github keyword',
            hintStyle: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 17),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
              borderSide:
                  BorderSide(color: Colors.white, style: BorderStyle.solid),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
        ),
      ),
      actions: <Widget>[
        IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () => BlocProvider.of<HomeBloc>(context)
                .add(SearchButtonPressedEvent()))
      ],
    );
  }

  Widget body(BuildContext context, HomeState state) {
    if (state is HomeInitialState) {
      return ListView.builder(
          itemCount: state.reposList.length,
          itemBuilder: (context, index) {
            return repoListItem(context, state.reposList[index]);
          });
    } else {
      return Text('BLoC state error');
    }
  }

  Widget repoListItem(BuildContext context, ReposItem repoData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            repoData.name,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),
          Text(repoData.description),
          Divider()
        ],
      ),
    );
  }

  Widget fab(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
    );
  }
}
