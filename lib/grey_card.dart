import 'package:flutter/material.dart';

class GreyCard extends StatelessWidget {
  const GreyCard({Key? key, required this.color, this.cardChild, this.onPress})
      : super(key: key);

  final Color color;
  final Widget? cardChild;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: cardChild,
      ),
    );
  }
}
