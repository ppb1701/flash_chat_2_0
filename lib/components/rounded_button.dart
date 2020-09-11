import 'package:flutter/material.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color fontColor;
  RoundedButton({this.text, @required this.onPressed, this.color, this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            text,
            style: TextStyle(
              color: fontColor,
              fontSize: 18.0,
            )
          ),
        ),
      ),
    );
  }
  
}
