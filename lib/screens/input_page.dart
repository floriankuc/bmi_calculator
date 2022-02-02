import 'package:bmi_calculator/components/button.dart';
import 'package:bmi_calculator/components/card_child.dart';
import 'package:bmi_calculator/components/custom_card.dart';
import 'package:bmi_calculator/components/icon.dart';
import 'package:bmi_calculator/controller/calculator.dart';
import 'package:bmi_calculator/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  double height = 180;
  int weight = 70;
  int age = 30;

  void updateColour(Gender gender) {
    selectedGender = gender;
    print(gender);
  }

  void updateColourState(Gender gender) {
    setState(() {
      updateColour(gender);
    });
  }

  void updateHeight(double newValue) {
    setState(() {
      height = newValue;
    });
  }

  void decrementWeight() {
    setState(() {
      weight--;
    });
  }

  void incrementWeight() {
    setState(() {
      weight++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(texts['title']),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => updateColourState(Gender.male),
                child: CustomCard(
                    selectedGender == Gender.male ? activeColor : inactiveColor,
                    CardChild(
                      texts['male'],
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80,
                      ),
                    )),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => updateColourState(Gender.female),
                child: CustomCard(
                    selectedGender == Gender.female
                        ? activeColor
                        : inactiveColor,
                    CardChild(
                      texts['female'],
                      Icon(
                        FontAwesomeIcons.venus,
                        size: 80,
                      ),
                    )),
              ),
            )
          ],
        )),
        Expanded(
          child: CustomCard(
              cardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(texts['height'], style: labelTextStyle),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.round().toString(), style: numberTextStyle),
                      Text(texts['cm'], style: labelTextStyle)
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8DE98),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x55EB1555),
                        activeTrackColor: Color(0xFFEB1555)),
                    child: Slider(
                      value: height,
                      min: 120,
                      max: 220,
                      onChanged: updateHeight,
                    ),
                  )
                ],
              )),
        ),
        Expanded(
            child: Row(
          children: [
            Expanded(
              child: CustomCard(
                  cardColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(texts['weight'], style: labelTextStyle),
                      Text(
                        weight.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(Icons.remove, decrementWeight),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(Icons.add, incrementWeight),
                        ],
                      )
                    ],
                  )),
            ),
            Expanded(
              child: CustomCard(
                  cardColor,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(texts['age'], style: labelTextStyle),
                      Text(
                        age.toString(),
                        style: numberTextStyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RoundIconButton(Icons.remove, () {
                            setState(() {
                              age--;
                            });
                          }),
                          SizedBox(
                            width: 10,
                          ),
                          RoundIconButton(Icons.add, () {
                            setState(() {
                              age++;
                            });
                          })
                        ],
                      )
                    ],
                  )),
            ),
          ],
        )),
        Button(
          () {
            Calculator calculator = Calculator(height.toInt(), weight);

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ResultsPage(calculator.execute(),
                        calculator.getResult(), calculator.getDescription())));
          },
          texts['calculate'],
        )
      ]),
    );
  }
}
