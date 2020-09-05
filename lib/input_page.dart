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
  Gender gender;

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
              color: Theme.of(context).buttonColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            ),
          ],
        ));
  }
}
