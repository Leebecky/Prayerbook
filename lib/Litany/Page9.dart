import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany Ninth page
class NinthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                customTextLitany(
                    "That it may please you to bring us to true penance"),
                customTextLitany("Guide and protect your Holy Church"),
                customTextLitany(
                    "Preserve in holy religion the Pope, and all those in Holy Orders"),
                customTextLitany("Humble the enemies of Holy Church"),
                customTextLitany(
                    "Give peace and unity to the whole Christian people"),
                customTextLitany(
                    "Bring back to the unity of the Church, all those who are straying and bring all unbelievers to the light of the Gospel"),
                customTextLitany(
                    "Strengthen and preserve us in your Holy service"),
                SizedBox(height: 20),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              customTextLitany("Lord, hear our prayer"),
              customTextLitany("Lord, hear our prayer"),
              customTextLitany("Lord, hear our prayer"),
              customTextLitany("Lord, hear our prayer"),
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
