import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany Seventh page
class SeventhPage extends StatelessWidget {
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
              customTextLitany("Lord, be merciful"),
              customTextLitany("From all evil"),
              customTextLitany("From all sin"),
              customTextLitany("From your wrath"),
              customTextLitany("From a sudden and unprovided death"),
              customTextLitany("From the snares of the devil"),
              customTextLitany("From anger, hatred and all ill-will"),
              customTextLitany("From the spirit of uncleanness"),
              customTextLitany("From lightning and tempest"),
              customTextLitany("From the scourge of earthquake"),
              customTextLitany("From plague, famine and war"),
              customTextLitany("From everlasting death"),
              customTextLitany("By the mystery of your Holy Incarnation"),
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
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              customTextLitany("Lord, save your people"),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
