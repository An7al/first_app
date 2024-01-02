import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
  }

  @override
  Widget build(contex) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        activeDiceImage,
        width: 500,
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
