import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

//^ Chaplet second page - St Michael's Prayer
class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          customText(
              "Pray for us, O glorious St Michael, Prince of the Church of Jesus Christ, that we may be made worthy of His promises.",
              textAlign: TextAlign.justify),
          customText(
              "Almighty and Everlasting God, Who, by a prodigy of goodness and a merciful desire for the salvation of all men, has appointed the most glorious St Michael, Prince of your Church, make us worthy we ask you to be delivered from all our enemies, that none of them may harass us at the hour of death, but that we may be conducted by him into Your Presence. This we ask through the merits of Jesus Christ Our Lord.",
              textAlign: TextAlign.justify),
          customText("Amen.", textAlign: TextAlign.justify)
        ],
      ),
    );
  }
}
