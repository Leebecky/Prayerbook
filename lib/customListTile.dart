import 'package:flutter/material.dart';

Widget customListTile({String title, String subtitle, Widget leading}) {
  return Card(
    color: Colors.grey[850],
    child: ListTile(
      leading: leading,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26),
      ),
      subtitle: Text(
        subtitle,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 26),
      ),
    ),
  );
}
