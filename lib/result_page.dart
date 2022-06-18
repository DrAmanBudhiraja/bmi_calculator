import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/grey_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

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
                  children: const [
                    Text(
                      'Normal',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '20',
                      style: kBMITextStyle,
                    ),
                    Text(
                      'This is Normal BMI',
                      textAlign: TextAlign.center,
                      style: kResultCommentStyle,
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: kBottomPinkButtonHeight,
                width: double.infinity,
                color: kBottomPinkButton,
                child: const Center(
                    child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 20,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
