import 'dart:math';

import 'package:flutter/material.dart';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int results = 1;
  void diceHandler() {
    setState(() {
      results = randomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(Context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Image.asset('assets/dice-images/dice-$results.png', width: 200),
        SizedBox(height: 20),
        TextButton(
          onPressed: diceHandler,
          child: Text(
            'Roll Dice',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
