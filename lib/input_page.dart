import 'package:flutter/material.dart';
import 'grey_card.dart';
import 'icon_content.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomPinkButtonHeight = 70.0;
const colorDarkGrey = Color(0xFF1D1E33);
const bottomPinkButton = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                    child: GreyCard(
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      color: colorDarkGrey,
                    ),
                  ),
                  Expanded(
                    child: GreyCard(
                      cardChild: IconContent(
                          icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                      color: colorDarkGrey,
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: GreyCard(
                color: colorDarkGrey,
              ),
            ),
            Expanded(
              child: Row(
                children: const [
                  Expanded(
                      child: GreyCard(
                    color: colorDarkGrey,
                  )),
                  Expanded(
                    child: GreyCard(
                      color: colorDarkGrey,
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
