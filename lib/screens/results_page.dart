import 'package:bmi_calculator/components/button.dart';
import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String description;

  ResultsPage(this.bmiResult, this.resultText, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(texts['title']),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    texts['result_headline'],
                    style: titleTextStyle,
                  ))),
          Expanded(
            flex: 5,
            child: CustomCard(
                activeColor,
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: resultTextStyle,
                    ),
                    Text(bmiResult, style: bmiTextStyle),
                    Text(
                      description,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ],
                )),
          ),
          Button(() {
            Navigator.pop(context);
          }, texts['recalculate'])
        ],
      ),
    );
  }
}
