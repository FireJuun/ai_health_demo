import 'package:ai_health_demo/shared/shared.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPage(context, 'AI Health'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[LabBMP(), LabCBC()],
        ),
      ),
      floatingActionButton: fab(context),
      drawer: appDrawer(),
    );
  }
}
