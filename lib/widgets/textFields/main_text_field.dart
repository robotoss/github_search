import 'package:flutter/material.dart';
import 'package:github_search/style/main_theme.dart';

class TextFieldMainWidget extends StatelessWidget {
  final String fieldName;
  final TextEditingController textController;

  TextFieldMainWidget({
    @required this.fieldName,
    @required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: TextFormField(
        controller: textController,
        style: TextStyle(
          color: Colors.black,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorPalette.mainTextField,
          contentPadding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
          hintText: fieldName,
          hintStyle: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(
                  color:  ColorPalette.mainTextFieldBorder,
                  width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(
                  color:  ColorPalette.mainTextFieldBorder,
                  width: 1)),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              borderSide: BorderSide(
                  color:  ColorPalette.mainTextFieldBorder,
                  width: 1)),
        ),
      ),
    );
  }
}