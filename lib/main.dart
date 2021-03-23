import 'package:flutter/material.dart';
import 'package:prayerbook/pandemic_prayer.dart';
import 'package:prayerbook/prayer_to_mary.dart';

import 'chaplet.dart';
import 'closing.dart';
import 'litany.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final PageController pageCtrl = PageController(initialPage: 0);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "An Invitation to Prayer",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.grey[850],
          textTheme: Typography.whiteHelsinki,
        ),
        home: PageView(
          controller: pageCtrl,
          children: [
            Chaplet(),
            Litany(),
            PrayerToMary(),
            PandemicPrayer(),
            Closing()
          ],
          // ),
        ));
  }
}
