import 'package:flutter/material.dart';

class RoundedCard extends StatelessWidget {
  const RoundedCard({
    Key key,
    @required this.color,
    this.child,
    this.onPress,
  }) : super(key: key);

  final Color color;
  final Widget child;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: child,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
