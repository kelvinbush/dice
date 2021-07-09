import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
          appBar: AppBar(
            title: Text('Dice'),
            backgroundColor: Colors.red,
          ),
          body: DicePage(),
        ),
      ),
    );

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 1;
  int rightDiceNo = 1;

  void changeDiceNumber() => setState(() {
        leftDiceNo = Random().nextInt(6) + 1;
        rightDiceNo = Random().nextInt(6) + 1;
      });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () => changeDiceNumber(),
                  child: Image.asset('images/dice$leftDiceNo.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () => changeDiceNumber(),
                  child: Image.asset('images/dice$rightDiceNo.png'))),
        ],
      ),
    );
  }
}
