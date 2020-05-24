import 'package:flutter/material.dart';
import 'package:github_search/widgets/layers/transparent_layer.dart';

void showCustomAlertDialog(BuildContext context, String msg) {
  showTransparentDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(children: <Widget>[
          blurLayer(context),
          Center(
            child: Container(
              margin: EdgeInsets.all(52),
              padding: EdgeInsets.only(top: 29, bottom: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Material(
                color: Colors.transparent,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 15, right: 15, bottom: 22),
                      child: Center(
                        child: Text(msg,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            )),
                      ),
                    ),
                    Divider(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: double.infinity,
                        color: Colors.transparent,
                        child: Center(
                          child: Text("Ok",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 17,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]);
      });
}