import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0D22),
        buttonColor: Color(0xFFEB1555),
        scaffoldBackgroundColor: Color(0xFF0A0D22),
        unselectedWidgetColor: Color(0xFF111328),
        toggleableActiveColor: Color(0xFF1D1E33),
        cardColor: Color(0xFF1D1E33),
      ),
      home: InputPage(),
    );
  }
}
