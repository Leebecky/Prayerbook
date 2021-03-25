import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

//~  Litany Eleventh page
class EleventhPage extends StatelessWidget {
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
              customTextLitany(
                  "Lamb of God, who takes away the sins of the world"),
              customTextLitany(
                  "Lamb of God, who takes away the sins of the world"),
              customTextLitany(
                  "Lamb of God, who takes away the sins of the world"),
              customTextLitany("Christ, hear us"),
              customTextLitany("Lord Jesus hear our prayer"),
              customTextLitany("Lord, have mercy on us"),
              customTextLitany("Christ, have mercy on us"),
              customTextLitany("Lord, have mercy on us"),
              SizedBox(height: 20),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              customTextLitany("Spare us, O Lord!"),
              customTextLitany("Graciously hear us, O Lord!"),
              customTextLitany("Have mercy on us"),
              customTextLitany("Christ, graciously hear us"),
              customTextLitany("Lord Jesus hear our prayer"),
              customTextLitany("Lord, have mercy on us"),
              customTextLitany("Christ, have mercy on us"),
              customTextLitany("Lord, have mercy on us"),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
