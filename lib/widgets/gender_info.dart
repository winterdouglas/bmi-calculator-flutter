import 'package:flutter/material.dart';

class GenderInfo extends StatelessWidget {
  const GenderInfo({Key key, @required this.icon, @required this.iconHeight, @required this.text, this.iconColor}) : super(key: key);

  final IconData icon;
  final double iconHeight;
  final String text;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor ?? IconTheme.of(context).color,
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
