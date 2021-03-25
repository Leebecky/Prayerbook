import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany Eight page
class EightPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              customTextLitany("By Your Coming"),
              customTextLitany("By Your Birth"),
              customTextLitany("By Your Baptism and Holy Fasting"),
              customTextLitany("By Your Cross and Passion"),
              customTextLitany("By Your Death and Burial"),
              customTextLitany("By Your Holy Resurrection"),
              customTextLitany("By Your Wonderful Ascension"),
              customTextLitany("By the coming of the Holy Spirit"),
              customTextLitany("On the Day of Judgement"),
              customTextLitany("Be merciful to us sinners"),
              customTextLitany("That you will spare us"),
              customTextLitany("That you will pardon us"),
              SizedBox(height: 20),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, hear our prayer"),
              customTextLitany("Lord, hear our prayer"),
              customTextLitany("Lord, hear our prayer"),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
