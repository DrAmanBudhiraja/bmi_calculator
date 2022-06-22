import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/grey_card.dart';
import 'package:flutter/material.dart';
import '../components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(
      {Key? key,
      required this.bmi,
      required this.resultText,
      required this.resultInterpretation})
      : super(key: key);

  final String bmi;
  final String resultText;
  final String resultInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 15.0, top: 10.0),
                child: const Text(
                  'Your Result',
                  style: kNumberTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: GreyCard(
                color: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText,
                      style: kResultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: kBMITextStyle,
                    ),
                    Text(
                      resultInterpretation,
                      textAlign: TextAlign.center,
                      style: kResultCommentStyle,
                    )
                  ],
                ),
              ),
            ),
            BottomButton(
              onPress: () {
                Navigator.pop(context);
              },
              text: 'RE-CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
