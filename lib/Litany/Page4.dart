import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany Fourth page
class FourthPage extends StatelessWidget {
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
              customTextLitany("St. Stephen"),
              customTextLitany("St. Lawrence"),
              customTextLitany("St. Vincent"),
              customTextLitany("St. Fabian and Sebastian"),
              customTextLitany("St. John and Paul"),
              customTextLitany("St. Cosmas and Damian"),
              customTextLitany("All you Holy Martyrs"),
              customTextLitany("St. Sylvester"),
              customTextLitany("St. Gregory"),
              customTextLitany("St. Ambrose"),
              customTextLitany("St. Augustine"),
              customTextLitany("St. Jerome"),
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
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
