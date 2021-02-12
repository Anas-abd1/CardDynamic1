import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './carteViste.dart';
import 'Widget.dart/fristpage.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  //Function addcarte;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FristPage(),
    );
  }
}
