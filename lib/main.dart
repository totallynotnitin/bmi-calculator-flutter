import 'package:flutter/material.dart';
import 'Screens/Input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Color(0xFF0c1234),
          scaffoldBackgroundColor: Color(0xFF0c1234)),
      home: InputPage(),
    );
  }
}
