import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        },
        child: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
          return Scaffold(
            key: _scaffoldKey,
            appBar: searchAppBar(context),
          );
        }),
      ),
    );
  }

  Widget searchAppBar(BuildContext context) {
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
}
