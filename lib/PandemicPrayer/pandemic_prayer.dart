import 'package:flutter/material.dart';
import 'Page2.dart';
import 'package:prayerbook/CustomWidget/customText.dart';

class PandemicPrayer extends StatelessWidget {
  final PageController pandemicPrayerCtrl = PageController();
  final PageController pageCtrl;

  PandemicPrayer(this.pageCtrl);

  @override
  Widget build(BuildContext context) {
    List<Widget> pandemicPrayerPages = [FirstPage(), SecondPage()];

    return Scaffold(
        appBar: AppBar(
          title: Text("Prayer To Mary"),
        ),
        body: GestureDetector(
          onTap: () {
            //^  If we are still on the first page:
            if (pandemicPrayerCtrl.page != (pandemicPrayerPages.length - 1)) {
              pandemicPrayerCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            } else {
              //^  Once done with the PandemicPrayer, move on to the next page (PandemicPrayer)
              pageCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            }
          },
          child: PageView(
            controller: pandemicPrayerCtrl,
            children: pandemicPrayerPages,
          ),
        ));
  }
}

//~  Prayer for Pandemic - first page
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
              "Almighty God, \nwho forgive the sins of your people and heal all their faults, \nyou sent your beloved Son to bear our sickness, \nlook upon us who stand humbly before You."),
          SizedBox(height: 20),
          customText(
              "We pray to You in this time of plague and need, \nremember the love and kindness that You have always shown \nto Your people in times of tribulation."),
          SizedBox(height: 20),
          customText(
              "Just as You graciously looked upon Aaron’s atonement \nand stopped the plague that broke out, \njust as You accepted David’s sacrifice \nand commanded the destroying angel to withdraw his hand \naccept also today, our prayer and sacrifice and show us mercy"),
        ],
      ),
    );
  }
}
