import 'package:flutter/material.dart';
// import 'package:iot/screens/home.dart';
import 'package:iot/screens/window_register.dart';

void main() {
  runApp(SmartWindow());
}

class SmartWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan[900],
        accentColor: Colors.green[700],
      ),
      home: WindowRegister(),
    );
  }
}
