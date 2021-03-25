import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany Sixth page
class SixthPage extends StatelessWidget {
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
              customTextLitany("St. Mary Magdalene"),
              customTextLitany("St. Agatha"),
              customTextLitany("St. Lucy"),
              customTextLitany("St. Agnes"),
              customTextLitany("St. Cecilia"),
              customTextLitany("St. Anastasia"),
              customTextLitany("St. Catherine"),
              customTextLitany("St. Clare"),
              customTextLitany("All you Holy Virgins and Widows"),
              customTextLitany("All you Holy Saints of God"),
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
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
