import 'package:flutter/cupertino.dart';

Widget customText(String text,
    {TextAlign textAlign = TextAlign.left, double fontSize = 32}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize),
    textAlign: textAlign,
  );
}

Widget customTextLitany(String text,
    {TextAlign textAlign = TextAlign.left, double fontSize = 28}) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize),
    textAlign: textAlign,
  );
}
