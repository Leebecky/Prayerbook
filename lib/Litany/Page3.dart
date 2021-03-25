import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany third page
class ThirdPage extends StatelessWidget {
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
              customTextLitany("St. James"),
              customTextLitany("St. Philip"),
              customTextLitany("St. Bartholomew"),
              customTextLitany("St. Matthew"),
              customTextLitany("St. Simon"),
              customTextLitany("St. Jude"),
              customTextLitany("St. Matthias"),
              customTextLitany("St. Barnabas"),
              customTextLitany("St. Luke"),
              customTextLitany("St. Mark"),
              customTextLitany("All you Holy Apostles and Evangelists"),
              customTextLitany("All you Holy Disciples of the Lord"),
              customTextLitany("All you Holy Innocents"),
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
