import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/reusablecard.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  const ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpretation,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              onPress: () {},
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
