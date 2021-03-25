import 'package:flutter/material.dart';
import 'package:prayerbook/CustomWidget/customText.dart';
import 'package:prayerbook/Litany/Page10.dart';
import 'package:prayerbook/Litany/Page11.dart';
import 'package:prayerbook/Litany/Page4.dart';
import 'package:prayerbook/Litany/Page5.dart';
import 'package:prayerbook/Litany/Page6.dart';
import 'package:prayerbook/Litany/Page7.dart';
import 'package:prayerbook/Litany/Page8.dart';
import 'package:prayerbook/Litany/Page9.dart';
import 'Page2.dart';
import 'Page3.dart';

class Litany extends StatelessWidget {
  final PageController litanyCtrl = PageController();
  final PageController pageCtrl;

  Litany(this.pageCtrl);

  @override
  Widget build(BuildContext context) {
    List<Widget> litanyPages = [
      FirstPage(),
      SecondPage(),
      ThirdPage(),
      FourthPage(),
      FifthPage(),
      SixthPage(),
      SeventhPage(),
      EightPage(),
      NinthPage(),
      TenthPage(),
      EleventhPage(),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("Litany of the Saints"),
        ),
        body: GestureDetector(
          onTap: () {
            //^  If we are still on the first page:
            if (litanyCtrl.page != (litanyPages.length - 1)) {
              litanyCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            } else {
              //^  Once done with the Litany, move on to the next page (Litany)
              pageCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            }
          },
          child: PageView(
            controller: litanyCtrl,
            children: litanyPages,
          ),
        ));
  }
}

//~  Litany first page
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              customTextLitany("Lord, have mercy on us"),
              customTextLitany("Christ, have mercy on us"),
              customTextLitany("Lord, have mercy on us"),
              customTextLitany("Christ, hear us"),
              SizedBox(height: 20),
              customTextLitany("God, the Father of heaven"),
              customTextLitany("God the Son, redeemer of the world"),
              customTextLitany("God, the Holy Spirit"),
              customTextLitany("Holy Trinity, one God"),
              SizedBox(height: 20),
              customTextLitany("Holy Mary"),
              customTextLitany("Holy Mother of God"),
              customTextLitany("Holy Virgin of Virgins"),
              SizedBox(height: 20),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              customTextLitany("Lord, have mercy on us"),
              customTextLitany("Christ, have mercy on us"),
              customTextLitany("Lord, have mercy on us"),
              customTextLitany("Christ, hear us"),
              SizedBox(height: 20),
              customTextLitany("Have mercy on us"),
              customTextLitany("Have mercy on us"),
              customTextLitany("Have mercy on us"),
              customTextLitany("Have mercy on us"),
              SizedBox(height: 20),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              customTextLitany("Pray for us"),
              SizedBox(height: 20),
            ],
          )
        ],
      ),
    );
  }
}
