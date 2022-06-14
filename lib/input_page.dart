import 'package:flutter/material.dart';
import 'grey_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomPinkButtonHeight = 70.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomPinkButton = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(GenderType selectedGender) {
    //male = 1
    if (selectedGender == GenderType.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    //female = 2
    if (selectedGender == GenderType.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(GenderType.male);
                        });
                      },
                      child: GreyCard(
                        cardChild: const IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                        color: maleCardColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          updateColor(GenderType.female);
                        });
                      },
                      child: GreyCard(
                        cardChild: const IconContent(
                            icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                        color: femaleCardColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: GreyCard(
                color: activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                      child: GreyCard(
                    color: activeCardColor,
                  )),
                  Expanded(
                    child: GreyCard(
                      color: activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: bottomPinkButtonHeight,
              width: double.infinity,
              color: bottomPinkButton,
              child: const Center(
                  child: Text(
                'CALCULATE',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}

enum GenderType { male, female }
