import 'package:flutter/material.dart';
import 'Page2.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

class PrayerToMary extends StatelessWidget {
  final PageController prayerToMaryCtrl = PageController();
  final PageController pageCtrl;

  PrayerToMary(this.pageCtrl);

  @override
  Widget build(BuildContext context) {
    List<Widget> prayerToMaryPages = [FirstPage(), SecondPage()];

    return Scaffold(
        appBar: AppBar(
          title: Text("Prayer To Mary"),
        ),
        body: GestureDetector(
          onTap: () {
            //^  If we are still on the first page:
            if (prayerToMaryCtrl.page != (prayerToMaryPages.length - 1)) {
              prayerToMaryCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            } else {
              //^  Once done with the PrayerToMary, move on to the next page (PrayerToMary)
              pageCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            }
          },
          child: PageView(
            controller: prayerToMaryCtrl,
            children: prayerToMaryPages,
          ),
        ));
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
          SizedBox(height: 20),
          customText(
              "We entrust ourselves to you, Health of the Sick,\n who at the cross took part in Jesus’ pain, keeping your faith firm."),
          SizedBox(height: 20),
          customText(
              "You, Salvation of the Roman People, \nknow what we need, \nand we are sure you will provide \nso that, as in Cana of Galilee, we may return to joy and to feasting \nafter this time of trial."),
        ],
      ),
    );
  }
}
