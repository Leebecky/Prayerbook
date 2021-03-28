import 'package:flutter/material.dart';
import 'package:prayerbook/PandemicPrayer/pandemic_prayer.dart';
import 'package:prayerbook/PrayerToMary/prayer_to_mary.dart';

import 'Chaplet/Page1.dart';
import 'closing.dart';
import 'Litany/Page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PageController pageCtrl = PageController(initialPage: 0);
  final PageController chapletCtrl = PageController();
  final PageController litanyCtrl = PageController();
  final PageController prayerToMaryCtrl = PageController();
  final PageController pandemicPrayerCtrl = PageController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "An Invitation to Prayer",
        theme: ThemeData(
            primarySwatch: Colors.blue,
            scaffoldBackgroundColor: Colors.grey[850],
            textTheme: Typography.whiteHelsinki,
            canvasColor: Colors.grey[850]),
        home: PageView(
          controller: pageCtrl,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Chaplet(pageCtrl, chapletCtrl),
            Litany(pageCtrl, litanyCtrl, chapletCtrl),
            PrayerToMary(pageCtrl, prayerToMaryCtrl, litanyCtrl),
            PandemicPrayer(pageCtrl, pandemicPrayerCtrl, prayerToMaryCtrl),
            Closing(pageCtrl, pandemicPrayerCtrl)
          ],
        ));
  }
}
