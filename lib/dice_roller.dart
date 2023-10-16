import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// alt ççizginin anlamı private anlamına gelir
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    // ...
    /* var diceRoll = Random().nextInt(6) +
        1; // burada +1 sebebi ise 0-5 arası yerine 1-6 arasını almamk için */
    setState(() {
      /* activeDiceImage = 'assets/images/dice-${diceRoll + 1}.png'; */
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });

    print('changing image...');
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                /* padding: const EdgeInsets.only(top: 20), */
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
