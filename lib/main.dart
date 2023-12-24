import 'package:flutter/material.dart';
import 'package:menu_app/views/myhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Menu',
      home: MyHome(),
    );
  }
}
