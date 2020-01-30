import 'package:ai_health_demo/shared/shared.dart';
import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPage(context, 'new page'),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.grey,
        child: Stack(
          children: <Widget>[
            Positioned(
              right: 12.0,
              child: Container(
                color: Colors.red,
                child: Text('top'),
              ),
            ),
            Positioned(
              bottom: 48.0,
              left: 36.0,
              child: Text('bottom'),
            ),
            Align(
              alignment: Alignment(.2, .1),
              child: Container(
                color: Colors.blue,
                child: Text('center2'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: Colors.yellow,
                child: Text('center'),
              ),
            ),
            Positioned(
              left: 12.0,
              top: 32.0,
              child: LabCBC(),
            )
          ],
        ),
      ),
      floatingActionButton: fab(context),
    );
  }
}
