import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoler extends StatefulWidget {
  const DiceRoler({super.key});

  @override
  State<DiceRoler> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoler> {
  var currentNumber = 1;

  void roleDice() {
    setState(() {
      currentNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "images/dice-$currentNumber.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: roleDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text("mantap"),
        )
      ],
    );
  }
}
