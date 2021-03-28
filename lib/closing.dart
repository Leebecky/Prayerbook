import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/customText.dart';
import 'package:prayerbook/CustomWidget/prevBtn.dart';
import 'package:prayerbook/drawer.dart';

class Closing extends StatelessWidget {
  final PageController pageCtrl;
  final PageController pandemicCtrl;
  Closing(this.pageCtrl, this.pandemicCtrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[300],
          title: Text("Closing Prayer"),
        ),
        drawer: SideDrawer(pageCtrl),
        body: Stack(children: [
          Container(
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
                customText("Amen"),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: PrevButton(
              onPressed: () => pageCtrl
                  .previousPage(
                      duration: Duration(milliseconds: 1), curve: Curves.linear)
                  .then(
                    (v) async => await Future.delayed(Duration(milliseconds: 1),
                        () => pandemicCtrl.jumpToPage(1)),
                  ),
            ),
          )
        ]));
  }
}
