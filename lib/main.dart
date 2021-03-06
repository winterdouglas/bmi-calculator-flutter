import 'package:flutter/material.dart';
import 'colors.dart';
import 'styles.dart';
import 'input_page.dart';
import 'results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        primaryColor: kPrimaryColor,
        accentColor: kAccentColor,
        buttonColor: kButtonColor,
        unselectedWidgetColor: kUnselectedWidgetColor,
        toggleableActiveColor: kSelectedWidgetColor,
        cardColor: kCardColor,
        sliderTheme: SliderTheme.of(context).copyWith(
            thumbColor: kAccentColor,
            overlayColor: kAccentColor.withAlpha(50),
            activeTrackColor: kSliderActiveTrackColor,
            inactiveTrackColor: kSliderInactiveTrackColor,
            trackHeight: 1,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15,
              disabledThumbRadius: 15,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 25,
            )),
        textTheme: ThemeData.dark().textTheme.copyWith(
              bodyText1: kBodyText1Style,
              bodyText2: kBodyText2Style,
              headline3: kHeading3Style,
            ),
      ),
      routes: {
        '/': (ctx) => InputPage(),
        '/results': (ctx) => ResultsPage(),
      },
      initialRoute: '/',
    );
  }
}
