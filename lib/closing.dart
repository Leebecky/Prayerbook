import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

class Closing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Closing Prayer"),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customText(
                  "May the Lord bless us, Protect us from all evil and bring us to everlasting life",
                  textAlign: TextAlign.center),
              SizedBox(height: 30),
              customText(
                  "Glory be to the Father and to the Son and to the Holy Spirit",
                  textAlign: TextAlign.center),
              SizedBox(height: 30),
              customText("Amen")
            ],
          ),
        ));
  }
}
