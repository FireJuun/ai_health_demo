import 'package:flutter/material.dart';

class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('new page'),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        color: Colors.grey,
        child: Text('new page'),
      ),
    );
  }
}
