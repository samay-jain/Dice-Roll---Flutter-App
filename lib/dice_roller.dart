import 'package:flutter/material.dart';
import 'dart:math';

class diceRoller extends StatefulWidget {
  diceRoller({super.key});
  @override
  State<diceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<diceRoller> {
  final rd = Random();
  var num = 2;
  void rollDice() {
    setState(() {
      num = rd.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/Images/dice-$num.png',
          width: 300,
        ),
        const SizedBox(height: 20),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              //padding: const EdgeInsets.only(top:20,),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
