import 'package:flutter/material.dart';
import 'package:prayerbook/listTile.dart';

class Chaplet extends StatelessWidget {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [FirstPage()],
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("St Michael's Chaplet"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "O God, come to my assistance. O Lord, make haste to help me."),
            Text("Glory be to the Father..."),
            Text(
                "[Say 1 Our Father and 3 Hail Marys after each of the following salutation in honour of the nine choirs of Angels]"),
            customListTile(
                title:
                    "1. By the intercession of St. Michael and the celestial Choir of Seraphim, may the Lord make us worthy to burn with the fire of perfect charity.",
                subtitle: "Amen"),
            customListTile(
              title:
                  "2. By the intercession of St. Michael and the celestial Choir of Cherubim, may the Lord grant us the grace to leave the ways of sin and run in the paths of Christian perfection.",
              subtitle: "Amen",
            ),
            customListTile(
                title:
                    "3. By the intercession of St. Michael and the celestial Choir of Thrones, may the Lord infuse into our hearts a true and sincere spirit of humility.",
                subtitle: "Amen"),
          ],
        ),
      ),
    );
  }
}
