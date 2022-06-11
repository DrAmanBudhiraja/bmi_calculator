import 'package:flutter/material.dart';

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
                  color: Color(0xFF1D1E33),
                )),
                Expanded(
                    child: GreyCard(
                  color: Color(0xFF1D1E33),
                )),
              ],
            )),
            const Expanded(
                child: GreyCard(
              color: Color(0xFF1D1E33),
            )),
            Expanded(
                child: Row(
              children: const [
                Expanded(
                    child: GreyCard(
                  color: Color(0xFF1D1E33),
                )),
                Expanded(
                    child: GreyCard(
                  color: Color(0xFF1D1E33),
                )),
              ],
            )),
          ],
        ),
      ),
    );
  }
}

class GreyCard extends StatelessWidget {
  final Color color;

  const GreyCard({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
    );
  }
}
