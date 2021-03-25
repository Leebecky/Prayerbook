import 'package:prayerbook/CustomWidget/customText.dart';
import 'package:flutter/material.dart';

//~  Prayer for Pandemic - first page
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
              "Keep this disease away from us, allow those affected to be healed, protect those who have been preserved from it by Your goodness,and do not let the plague spread. "),
          SizedBox(height: 50),
          customText("Mary, health of the sick, pray for us!"),
          customText("Saint Corona, pray for us!"),
          customText("Saint Sebastian, pray for us!"),
          customText("Saint Roch, pray for us!"),
        ],
      ),
    );
  }
}
