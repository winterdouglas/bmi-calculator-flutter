import 'package:flutter/material.dart';
import 'rounded_icon_button.dart';

class NumericUpDown extends StatelessWidget {
  const NumericUpDown({
    Key key,
    @required this.onRemovePressed,
    @required this.onAddPressed,
  }) : super(key: key);

  final Function onRemovePressed;
  final Function onAddPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedIconButton(
          icon: Icons.remove,
          onPressed: onRemovePressed,
        ),
        SizedBox(
          width: 10,
        ),
        RoundedIconButton(
          icon: Icons.add,
          onPressed: onAddPressed,
        ),
      ],
    );
  }
}
