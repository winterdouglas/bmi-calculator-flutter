import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'colors.dart';
import 'gender.dart';
import 'sizes.dart';
import 'widgets/numeric_up_down.dart';
import 'widgets/rounded_card.dart';
import 'widgets/gender_info.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _minHeightInCm = 80;
  int _maxHeightInCm = 220;

  Gender gender;
  int height = 180;
  int weight = 60;
  int age = 30;

  @override
  Widget build(BuildContext context) {
    final unselectedColor = Theme.of(context).unselectedWidgetColor;
    final selectedColor = Theme.of(context).toggleableActiveColor;
    final selectedIconColor = Theme.of(context).textTheme.bodyText1.color;
    final unselectedIconColor = Theme.of(context).textTheme.bodyText2.color;

    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RoundedCard(
                      onPress: () {
                        setState(() {
                          gender = Gender.male;
                        });
                      },
                      color: gender == Gender.male ? selectedColor : unselectedColor,
                      child: GenderInfo(
                        iconColor: gender == Gender.male ? selectedIconColor : unselectedIconColor,
                        icon: FaIcon(FontAwesomeIcons.mars).icon,
                        iconHeight: kIconHeight,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: RoundedCard(
                      onPress: () {
                        setState(() {
                          gender = Gender.female;
                        });
                      },
                      color: gender == Gender.female ? selectedColor : unselectedColor,
                      child: GenderInfo(
                        iconColor: gender == Gender.female ? selectedIconColor : unselectedIconColor,
                        icon: FaIcon(
                          FontAwesomeIcons.venus,
                          color: kBodyText2Color,
                        ).icon,
                        iconHeight: kIconHeight,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RoundedCard(
                      color: Theme.of(context).cardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: Theme.of(context).textTheme.headline3,
                              ),
                              Text(
                                'cm',
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: _minHeightInCm.toDouble(),
                              max: _maxHeightInCm.toDouble(),
                              onChanged: (val) {
                                setState(() {
                                  height = val.round();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: RoundedCard(
                      color: Theme.of(context).cardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('WEIGHT'),
                          Text(
                            weight.toString(),
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          NumericUpDown(
                            onRemovePressed: () {
                              setState(() {
                                weight--;
                              });
                            },
                            onAddPressed: () {
                              setState(() {
                                weight++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: RoundedCard(
                      color: Theme.of(context).cardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('AGE'),
                          Text(
                            age.toString(),
                            style: Theme.of(context).textTheme.headline3,
                          ),
                          NumericUpDown(
                            onRemovePressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            onAddPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Material(
              color: Theme.of(context).accentColor,
              child: InkWell(
                onTap: () => {},
                child: Container(
                  height: kBottomContainerHeight,
                  child: Center(
                    child: Text(
                      'CALCULATE',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
