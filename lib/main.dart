import 'package:flutter/material.dart';
import 'colors.dart';
import 'styles.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kPrimaryColor,
        buttonColor: kButtonColor,
        scaffoldBackgroundColor: kBackgroundColor,
        unselectedWidgetColor: kUnselectedWidgetColor,
        toggleableActiveColor: kSelectedWidgetColor,
        cardColor: kCardColor,
        textTheme: ThemeData.dark().textTheme.copyWith(
              bodyText2: kBodyText2Style,
            ),
      ),
      home: InputPage(),
    );
  }
}
