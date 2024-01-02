import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
 // var activeDiceImage = 'assets/images/dice-1.png';
  var diceRoll = 2 ;
  void rollDice() {
    setState(() {
      diceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$diceRoll.png',
        width: 200,
      ),
      const SizedBox(height: 5),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              padding: const EdgeInsets.only(),
              foregroundColor: Colors.deepPurple,
              textStyle: const TextStyle()),
          child: const Text('Roll a Dice'))
    ]);
  }
}
