import 'dart:math';

import 'package:bmi_calculator/constants/constants.dart';

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator(this.height, this.weight);

  String execute() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  double get bmi => _bmi;

  String getResult() {
    if (_bmi >= 25) {
      return texts['overweight'];
    } else if (_bmi > 18.5) {
      return texts['normal'];
    } else {
      return texts['underweight'];
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return texts['desc_ow'];
    } else if (_bmi > 18.5) {
      return texts['desc_normal'];
    } else {
      return texts['desc_uw'];
    }
  }
}
