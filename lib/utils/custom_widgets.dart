import 'package:flutter/material.dart';

buildButton({String text, Color textColor = Colors.white ,Color color = Colors.blue}){
  return MaterialButton(
    color: color,
    child: Text(text, style: TextStyle(color: textColor, )),
    onPressed: (){
    },
  );
}