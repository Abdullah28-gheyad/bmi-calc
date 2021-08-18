import 'package:bmi_calculater/modules/bmi_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white
        )
      ),
      home: BmiScreen(),
    );
  }
}
