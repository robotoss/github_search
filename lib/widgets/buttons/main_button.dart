import 'package:flutter/material.dart';

class MainButtonWidget extends StatelessWidget {
  final Function func;
  final String buttonTitle;
  const MainButtonWidget(
      {Key key, @required this.func, @required this.buttonTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        child: FlatButton(
          shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
          color: Colors.blue,
          onPressed: func, 
          child: Text(buttonTitle, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 16),)
          ),
      ),
    );
  }
}
