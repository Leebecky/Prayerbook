import 'package:flutter/material.dart';

TextStyle headingStyle = TextStyle(fontSize: 32, color: Colors.yellow);

Widget customListTile({String title, String subtitle, Widget leading}) {
  return Card(
    color: Colors.grey[850],
    child: ListTile(
      leading: leading,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
      subtitle: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28),
      ),
    ),
  );
}
