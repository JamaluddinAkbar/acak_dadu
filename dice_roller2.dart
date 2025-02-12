import 'package:flutter/material.dart';
import 'dart:math';



final randomizer1 = Random();
final randomizer2 = Random();

class dice_roller2 extends StatefulWidget {
  const dice_roller2({super.key});

  @override
  State<dice_roller2> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<dice_roller2> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 3;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer1.nextInt(6) + 1;
      currentDiceRoll2 = randomizer2.nextInt(6) + 1;
    });
  }

  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/dice-$currentDiceRoll1.png', width: 150),
            SizedBox(width: 20),
            Image.asset('assets/dice-$currentDiceRoll2.png', width: 150),
          ],
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice!'),
        )
      ],
    );
  }
}
