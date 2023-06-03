import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
          child: Column(
        children: [buildheader(context), draweritems()],
      )),
    );
  }

  Widget draweritems() {
    return Column(
      children: const [
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Privacy'),
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Privacy'),
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Privacy'),
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text('Privacy'),
        ),
      ],
    );
  }

  Widget buildheader(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
    );
  }
}
