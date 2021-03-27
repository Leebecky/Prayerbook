import 'package:flutter/material.dart';

TextStyle headingStyle = TextStyle(fontSize: 32, color: Colors.yellow);
TextStyle leadingStyle = TextStyle(fontSize: 35);

Widget customListTile({String title, String subtitle, Widget leading}) {
  return ListTile(
    leading: leading,
    title: Text(
      title,
      textAlign: TextAlign.justify,
      style: TextStyle(fontSize: 35),
    ),
    subtitle: Text(
      subtitle,
      style: TextStyle(fontSize: 35, color: Colors.white),
    ),
  );
}
