import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany Fifth page
class FifthPage extends StatelessWidget {
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
              customTextLitany("St. Martin"),
              customTextLitany("St. Nicholas"),
              customTextLitany("All you Holy Bishops and Confessors"),
              customTextLitany("All you Holy Doctors"),
              customTextLitany("St. Anthony"),
              customTextLitany("St. Benedict"),
              customTextLitany("St. Bernard"),
              customTextLitany("St. Dominic"),
              customTextLitany("St. Francis"),
              customTextLitany("All you Holy Priests and Levites"),
              customTextLitany("All you Holy Monks and Hermits"),
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
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
