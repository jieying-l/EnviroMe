import 'package:lab_rat_2/pages/welcome.dart';
import 'package:lab_rat_2/pages/dashboard.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'envirome',
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Color(0XFF2E7D32),
        accentColor: Color(0XFF66BB6A),
        fontFamily: 'Ubuntu',
      ),
      home: Welcome(),
    );
  }
}
