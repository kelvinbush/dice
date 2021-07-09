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

class DicePage extends StatelessWidget {
  final leftDiceNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('Left');
                  },
                  child: Image.asset('images/dice$leftDiceNo.png'))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('Right');
                  },
                  child: Image.asset('images/dice1.png'))),
        ],
      ),
    );
  }
}
