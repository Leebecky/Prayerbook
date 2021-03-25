import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

//~  Prayer to Mary - second page
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              "Help us, Mother of Divine Love, \nto conform to the will of the Father \nand to do as we are told by Jesus, \nwho has taken upon himself our sufferings \nand carried our sorrows \nto lead us, through the cross, \nto the joy of the resurrection."),
          customText("Amen."),
          SizedBox(height: 30),
          customText(
              "Under your protection, we seek refuge, Holy Mother of God. Do not disdain the entreaties of we who are in trial, but deliver us from every danger, O glorious and blessed Virgin."),
        ],
      ),
    );
  }
}
