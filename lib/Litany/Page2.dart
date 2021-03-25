import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany second page
class SecondPage extends StatelessWidget {
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
              customTextLitany("St. Michael"),
              customTextLitany("St. Gabriel"),
              customTextLitany("St. Raphael"),
              customTextLitany("All you Holy Angels and Archangels"),
              customTextLitany("St. John the Baptist"),
              customTextLitany("St. Joseph"),
              customTextLitany("All you Holy Patriachs and Prophets"),
              customTextLitany("St. Peter"),
              customTextLitany("St. Paul"),
              customTextLitany("St. Andrew"),
              customTextLitany("St. James"),
              customTextLitany("St. John"),
              customTextLitany("St. Thomas"),
              SizedBox(height: 20),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
