import 'package:flutter/material.dart';

Widget customListTile({String title, String subtitle}) {
  return ListTile(
    title: Text(
      title,
      textAlign: TextAlign.center,
    ),
    subtitle: Text(
      subtitle,
      textAlign: TextAlign.center,
    ),
  );
}
