import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton(this.icon, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 0,
      shape: CircleBorder(),
      onPressed: onPressed,
      fillColor: Colors.grey,
      constraints: BoxConstraints.tightFor(width: 56, height: 56),
    );
  }
}
