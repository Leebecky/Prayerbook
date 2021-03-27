import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  final PageController pageCtrl;
  SideDrawer(this.pageCtrl);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
              title: Text("Chaplet of St Michael"),
              onTap: () => pageCtrl.jumpToPage(0)),
          ListTile(
              title: Text("Litany of Saints"),
              onTap: () => pageCtrl.jumpToPage(1)),
          ListTile(
              title: Text("Prayer to Mary"),
              onTap: () => pageCtrl.jumpToPage(2)),
          ListTile(
              title: Text("Prayer during a Pandemic"),
              onTap: () => pageCtrl.jumpToPage(3)),
          ListTile(
              title: Text("Closing Prayer"),
              onTap: () => pageCtrl.jumpToPage(4))
        ],
      ),
    );
  }
}
