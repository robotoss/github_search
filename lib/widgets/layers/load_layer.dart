import 'package:flutter/material.dart';

import 'transparent_layer.dart';

void showLoadingLayer(BuildContext context) {
  showTransparentDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(children: <Widget>[
          blurLayer(context),
          Center(child: CircularProgressIndicator()),
        ]);
      });
}
