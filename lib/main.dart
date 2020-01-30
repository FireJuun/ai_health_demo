import 'package:ai_health_demo/screens/screens.dart';
import 'package:ai_health_demo/services/models.dart';
import 'package:ai_health_demo/shared/shared.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _streamCBC = Firestore.instance
        .collection('labs')
        .document('cbc')
        .snapshots()
        .map((v) => ModelCBC.fromJson(v.data));

    var _streamBMP = Firestore.instance
        .collection('labs')
        .document('bmp')
        .snapshots()
        .map((v) => ModelBMP.fromJson(v.data));

    return MultiProvider(
      providers: [
        StreamProvider<ModelCBC>.value(value: _streamCBC),
        StreamProvider<ModelBMP>.value(value: _streamBMP),
      ],
      child: MaterialApp(
        title: 'AI Health',
        theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: TextTheme(body1: TextStyle(fontSize: 36)),
        ),
        // home: HomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    );
  }
}
