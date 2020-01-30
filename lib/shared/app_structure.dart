import 'package:ai_health_demo/screens/screens.dart';
import 'package:flutter/material.dart';

PreferredSizeWidget appBarPage(BuildContext context, String id) {
  return AppBar(
    title: Text(id),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.developer_mode),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.people),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.home),
        onPressed: () {
          Navigator.popUntil(context, ModalRoute.withName('/'));
        },
      ),
    ],
  );
}

Widget fab(BuildContext context) {
  return FloatingActionButton(
    child: Icon(Icons.plus_one),
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) => NewScreen()));
    },
  );
}

Widget appDrawer() {
  return Drawer(
    child: ListView(
      children: <Widget>[
        DrawerHeader(
          child: Text('AI Health'),
        ),
        Text('text'),
        Text('text'),
        Text('text'),
        Text('text'),
        Text('text'),
      ],
    ),
  );
}
