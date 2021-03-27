import 'package:flutter/material.dart';

class PrevButton extends StatelessWidget {
  final Function onPressed;
  PrevButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 50,
      icon: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Icon(
          Icons.arrow_back_rounded,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
