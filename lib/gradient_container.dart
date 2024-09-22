import 'package:first_app/dice_roler.dart';
import 'package:flutter/material.dart';

const startAlign = Alignment.topCenter;
const endAlign = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  final Color colorTop;
  final Color colorEnd;
  const GradientContainer(
      {super.key, required this.colorTop, required this.colorEnd});

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          colorTop,
          colorEnd,
        ], begin: startAlign, end: endAlign),
      ),
      child: const Center(child: DiceRoler()),
    );
  }
}
