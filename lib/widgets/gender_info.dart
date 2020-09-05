import 'package:flutter/material.dart';
import '../styles.dart';

class GenderInfo extends StatelessWidget {
  const GenderInfo({
    Key key,
    @required this.icon,
    @required this.iconHeight,
    @required this.text,
  }) : super(key: key);

  final IconData icon;
  final double iconHeight;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconHeight,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          text,
        )
      ],
    );
  }
}
