import 'package:flutter/material.dart';
import '../CustomWidget/customText.dart';

//~  Litany Tenth page
class TenthPage extends StatelessWidget {
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
                    "Raise our minds to desire the things of Heaven"),
                customTextLitany(
                    "Reward all our benefactors with eternal blessings"),
                customTextLitany(
                    "Deliver our souls from eternal damnation, and the souls of our brethren, relatives and benefactors"),
                customTextLitany("Give and preserve the fruits of the earth"),
                customTextLitany(
                    "Grant eternal rest to all the faithful departed"),
                customTextLitany(
                    "That it may please You to hear and heed us, Jesus, Son of the Living God"),
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
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
