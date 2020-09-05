import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'gender.dart';
import 'widgets/rounded_card.dart';
import 'widgets/gender_info.dart';

const bottomContainerHeight = 80.0;
const iconHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color _unselectedColor;
  Color _selectedColor;
  int minHeightInCm = 80;
  int maxHeightInCm = 220;
  Gender gender;
  int heightInCm = 180;

  @override
  void didChangeDependencies() {
    _unselectedColor = Theme.of(context).unselectedWidgetColor;
    _selectedColor = Theme.of(context).toggleableActiveColor;

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                      color: gender == Gender.male ? _selectedColor : _unselectedColor,
                      child: GenderInfo(
                        icon: FaIcon(FontAwesomeIcons.mars).icon,
                        iconHeight: iconHeight,
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
                      color: gender == Gender.female ? _selectedColor : _unselectedColor,
                      child: GenderInfo(
                        icon: FaIcon(FontAwesomeIcons.venus).icon,
                        iconHeight: iconHeight,
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
                                heightInCm.toString(),
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
                              value: heightInCm.toDouble(),
                              min: minHeightInCm.toDouble(),
                              max: maxHeightInCm.toDouble(),
                              onChanged: (val) {
                                setState(() {
                                  heightInCm = val.round();
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
                    ),
                  ),
                  Expanded(
                    child: RoundedCard(
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Theme.of(context).accentColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
