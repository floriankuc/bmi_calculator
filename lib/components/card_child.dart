import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CardChild extends StatelessWidget {
  final String text;
  final Icon icon;

  CardChild(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: labelTextStyle,
        )
      ],
    );
  }
}
