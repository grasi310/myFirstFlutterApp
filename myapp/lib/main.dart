import 'package:flutter/material.dart';

import './fruehbats_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.deepOrange,
          accentColor: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('EasyList'),
        ),
        body:
            FruehbatsManager(), //Hier wird der Startparameter festgelegt, Default = 'Frühlauch' SYNTAX in den Klammern FruehbatsManager(startingFruehbat: 'IrgendeinString')
      ),
    );
  }
}
