import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/customListTile.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

//^ Chaplet second page - St Michael's Prayer
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Say one Our Father in honour of each of the following leading Angels: St Michael, St Gabriel, St Raphael and our Guardian Angel",
            style: headingStyle,
            textAlign: TextAlign.center,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Concluding Prayer: ",
              style: TextStyle(color: Colors.deepOrange[800], fontSize: 28),
              textAlign: TextAlign.left,
            ),
          ),
          customText(
            "O glorious prince St. Michael, chief and commander of the heavenly hosts, guardian of souls, vanquisher of rebel spirits, servant in the house of the Divine King and our admirable conductor, you who shine with excellence and superhuman virtue, deliver us from all evil; who turn to you with confidence and enable us by your gracious protection to serve God more and more faithfully every day.",
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}
