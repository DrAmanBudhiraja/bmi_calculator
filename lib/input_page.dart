import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomPinkButtonHeight = 70.0;
const colorDarkGrey = Color(0xFF1D1E33);
const bottomPinkButton = Color(0xFFEB1555);
const fontColor = Color(0xFF8D8E98);

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
                      cardChild: IconContent(),
                      color: colorDarkGrey,
                    ),
                  ),
                  Expanded(
                      child: GreyCard(
                    color: colorDarkGrey,
                  )),
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

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        FaIcon(
          FontAwesomeIcons.mars,
          size: 70.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
            color: fontColor,
            fontSize: 18,
            letterSpacing: 1.0,
          ),
        ),
      ],
    );
  }
}

class GreyCard extends StatelessWidget {
  const GreyCard({Key? key, required this.color, this.cardChild})
      : super(key: key);

  final Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: cardChild,
    );
  }
}
