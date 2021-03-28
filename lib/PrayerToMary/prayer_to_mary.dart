import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/prevBtn.dart';
import 'package:prayerbook/drawer.dart';
import 'Page2.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

class PrayerToMary extends StatelessWidget {
  final PageController prayerToMaryCtrl;
  final PageController pageCtrl;
  final PageController litanyCtrl;

  PrayerToMary(this.pageCtrl, this.prayerToMaryCtrl, this.litanyCtrl);

  @override
  Widget build(BuildContext context) {
    List<Widget> prayerToMaryPages = [FirstPage(), SecondPage()];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          title: Text("Prayer To Mary"),
        ),
        drawer: SideDrawer(pageCtrl),
        body: GestureDetector(
            onTap: () {
              if (prayerToMaryCtrl.page != (prayerToMaryPages.length - 1)) {
                prayerToMaryCtrl.nextPage(
                    duration: Duration(milliseconds: 1), curve: Curves.linear);
              } else {
                pageCtrl.nextPage(
                    duration: Duration(milliseconds: 1), curve: Curves.linear);
              }
            },
            child: Stack(children: [
              PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: prayerToMaryCtrl,
                children: prayerToMaryPages,
              ),
              Positioned(
                  bottom: 10,
                  left: 10,
                  child: PrevButton(
                    onPressed: () {
                      if (prayerToMaryCtrl.page != 0) {
                        prayerToMaryCtrl.previousPage(
                            duration: Duration(milliseconds: 1),
                            curve: Curves.linear);
                      } else {
                        pageCtrl
                            .previousPage(
                                duration: Duration(milliseconds: 1),
                                curve: Curves.linear)
                            .whenComplete(() => litanyCtrl.jumpToPage(10));
                      }
                    },
                  ))
            ])));
  }
}

//~  Prayer to Mary - first page
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          customText(
              "O Mary, \nYou always shine on our path \nas a sign of salvation and of hope."),
          SizedBox(height: 25),
          customText(
              "We entrust ourselves to you, Health of the Sick,\nwho at the cross took part in Jesus’ pain, keeping your faith firm."),
          SizedBox(height: 25),
          customText(
              "You, Salvation of the Roman People, \nknow what we need, \nand we are sure you will provide \nso that, as in Cana of Galilee, we may return to joy and to feasting \nafter this time of trial."),
        ],
      ),
    );
  }
}
