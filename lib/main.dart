import 'package:ai_health_demo/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Health',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: TextTheme(body1: TextStyle(fontSize: 36)),
      ),
      home: HomeScreen(),
    );
  }
}
