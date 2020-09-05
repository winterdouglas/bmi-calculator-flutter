import 'package:flutter/material.dart';
import '../sizes.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({
    Key key,
    @required this.text,
    @required this.onPressed,
  }) : super(key: key);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).accentColor,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: kBottomContainerHeight,
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ),
      ),
    );
  }
}
