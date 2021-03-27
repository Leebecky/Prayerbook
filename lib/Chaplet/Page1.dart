import 'package:flutter/material.dart';
import 'package:indexed_list_view/indexed_list_view.dart';
import 'package:prayerbook/CustomWidget/prevBtn.dart';
import 'package:prayerbook/CustomWidget/customListTile.dart';
import 'package:prayerbook/drawer.dart';
import 'Page2.dart';
import 'Page3.dart';

class Chaplet extends StatelessWidget {
  final PageController chapletCtrl;
  final IndexedScrollController intercessionCtrl =
      IndexedScrollController(initialIndex: 0);
  final PageController pageCtrl;
  final ValueNotifier<int> intercessionIndex = ValueNotifier<int>(0);

  Chaplet(this.pageCtrl, this.chapletCtrl);

  @override
  Widget build(BuildContext context) {
    List<Widget> chapletPages = [
      FirstPage(intercessionIndex, intercessionCtrl),
      SecondPage(),
      ThirdPage()
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text("St Michael's Chaplet"),
        ),
        drawer: SideDrawer(pageCtrl),
        body: GestureDetector(
          onTap: () {
            //^  If we are still on the first page:
            if (chapletCtrl.page == 0) {
              //^ Go to next intercession if its not completed, else go to the next page
              (intercessionIndex.value < 9)
                  ? intercessionCtrl.jumpToIndex(intercessionIndex.value)
                  : chapletCtrl.nextPage(
                      duration: Duration(milliseconds: 1),
                      curve: Curves.linear);
            } else if (chapletCtrl.page != (chapletPages.length - 1)) {
              chapletCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            } else {
              //^  Once done with the Chaplet, move on to the next page (Litany)
              pageCtrl.nextPage(
                  duration: Duration(milliseconds: 1), curve: Curves.linear);
            }
          },
          child: Stack(children: [
            PageView(
              controller: chapletCtrl,
              children: chapletPages,
            ),
            Positioned(
                bottom: 10,
                left: 10,
                child: PrevButton(onPressed: () {
                  //^  If we are still on the first page:
                  if (chapletCtrl.page == 0) {
                    //^ Go to next intercession if its not completed, else go to the next page
                    if (intercessionIndex.value > 0) {
                      intercessionCtrl.jumpToIndex(intercessionIndex.value - 2);
                    }
                  } else if (chapletCtrl.page != 0) {
                    chapletCtrl.previousPage(
                        duration: Duration(milliseconds: 1),
                        curve: Curves.linear);
                  }
                }))
          ]),
        ));
  }
}

//~  Chaplet first page - Intercessions
class FirstPage extends StatelessWidget {
  final ScrollController intercessionCtrl;
  final ValueNotifier intercessionIndex;
  FirstPage(this.intercessionIndex, this.intercessionCtrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(height: 20),
          Text(
            "O God, come to my assistance. O Lord, make haste to help me.",
            style: headingStyle,
          ),
          Text(
            "Glory be to the Father...",
            style: headingStyle,
          ),
          Text(
            "[Say 1 Our Father and 3 Hail Marys after each of the following salutation in honour of the nine choirs of Angels]",
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 150),
          //~ Intercessions
          Expanded(
            child: IndexedListView.builder(
                minItemCount: 0,
                maxItemCount: 9,
                physics: ClampingScrollPhysics(),
                controller: intercessionCtrl,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, int i) {
                  intercessionIndex.value = i;

                  return Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      width: MediaQuery.of(context).size.width,
                      child: intercessions[i]);
                }),
          ),
        ],
      ),
    );
  }

  final List<Widget> intercessions = [
    customListTile(
        leading: Text("1.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Seraphim, may the Lord make us worthy to burn with the fire of perfect charity.",
        subtitle: "Amen"),
    customListTile(
      leading: Text("2.", style: leadingStyle),
      title:
          "By the intercession of St. Michael and the celestial Choir of Cherubim, may the Lord grant us the grace to leave the ways of sin and run in the paths of Christian perfection.",
      subtitle: "Amen",
    ),
    customListTile(
        leading: Text("3.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Thrones, may the Lord infuse into our hearts a true and sincere spirit of humility.",
        subtitle: "Amen"),
    customListTile(
        leading: Text("4.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Dominations, may the Lord give us grace to govern our senses and overcome any unruly passions.",
        subtitle: "Amen"),
    customListTile(
        leading: Text("5.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Virtues, may the Lord preserve us from evil and falling into temptation.",
        subtitle: "Amen"),
    customListTile(
        leading: Text("6.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Powers, may the Lord protect our souls against the snares and temptations of the devil.",
        subtitle: "Amen"),
    customListTile(
        leading: Text("7.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Principalities, may God fill our souls with a true spirit of obedience.",
        subtitle: "Amen"),
    customListTile(
        leading: Text("8.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Archangels, may the Lord give us perseverance in faith and in all good works in order that we may attain the glory of heaven.",
        subtitle: "Amen"),
    customListTile(
        leading: Text("9.", style: leadingStyle),
        title:
            "By the intercession of St. Michael and the celestial Choir of Angels, may the Lord grant us to be protected by them in this mortal life and conducted in the life to come to heaven.",
        subtitle: "Amen"),
    Container()
  ];
}
