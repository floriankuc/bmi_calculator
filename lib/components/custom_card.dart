import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;

  CustomCard(this.colour, [this.cardChild]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: colour,
        ),
      ),
    );
  }
}
