import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const fontColor = Color(0xFF8D8E98);
const sizedBoxHeight = 15.0;
const fontSize = 18.0;
const letterSpacing = 1.0;
const iconSize = 70.0;

class IconContent extends StatelessWidget {
  const IconContent({Key? key, required this.icon, required this.label})
      : super(key: key);

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: iconSize,
        ),
        const SizedBox(
          height: sizedBoxHeight,
        ),
        Text(
          label,
          style: const TextStyle(
            color: fontColor,
            fontSize: fontSize,
            letterSpacing: letterSpacing,
          ),
        ),
      ],
    );
  }
}
