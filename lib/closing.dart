import 'package:flutter/material.dart';

class Closing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Closing Prayer"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
                "May the Lord bless us, Protect us from all evil and bring us to everlasting life"),
            Text(
                "Glory be to the Father and to the Son and to the Holy Spirit"),
            Text("Amen")
          ]),
        ));
  }
}
