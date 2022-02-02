import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18,
  color: Color(0xFF8D8E98),
);

const numberTextStyle = TextStyle(
  fontSize: 50,
  fontWeight: FontWeight.w900,
);

const double bottomContainerHeight = 80;
const Color cardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);
const Color inactiveColor = Color(0xFF111328);
const Color activeColor = Color(0xFF1D1E33);
const largeButtonTextStyle =
    TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
const titleTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
const resultTextStyle = TextStyle(
    color: Color(0xFF24D876), fontSize: 22, fontWeight: FontWeight.bold);
const bmiTextStyle = TextStyle(fontSize: 100, fontWeight: FontWeight.bold);
const bodyTextStyle = TextStyle(fontSize: 22);

const Map<String, String> texts = {
  'title': 'BMI CALCULATOR',
  'result_headline': 'Your result',
  'calculate': 'CALCULATE',
  'recalculate': 'RE-CALCULATE',
  'overweight': 'Overweight',
  'normal': 'Normal',
  'underweight': 'Underweight',
  'desc_ow': 'You\'re overweight, but nothing that cannot be solved!',
  'desc_normal': 'Everything is fine!',
  'desc_uw': 'You\'re underweight, feel free to buff up!',
  'male': 'MALE',
  'female': 'FEMALE',
  'height': 'HEIGHT',
  'cm': 'cm',
  'weight': 'WEIGHT',
  'age': 'AGE'
};
