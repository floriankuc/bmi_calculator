import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Button extends StatelessWidget {
  final Function onTap;
  final String title;

  Button(this.onTap, this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Container(
          child: Center(child: Text(this.title, style: largeButtonTextStyle)),
          padding: EdgeInsets.only(bottom: 20),
          color: bottomContainerColor,
          margin: EdgeInsets.only(top: 10),
          width: double.infinity,
          height: bottomContainerHeight),
    );
  }
}
