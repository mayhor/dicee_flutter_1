import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void clickeR() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  // DicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                clickeR();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                clickeR();
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          )
        ],
      ),
    );
  }
}


// class DicePage extends StatelessWidget {
//   // int leftDiceNumber = 5;

//   // DicePage({super.key});

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Center(
//   //     child: Row(
//   //       children: <Widget>[
//   //         Expanded(
//   //           child: TextButton(
//   //             onPressed: () {
//   //               print('left button got pressed');
//   //             },
//   //             child: Image.asset('images/dice$leftDiceNumber.png'),
//   //           ),
//   //         ),
//   //         Expanded(
//   //           child: TextButton(
//   //             onPressed: () {
//   //               print('Right button got pressed');
//   //             },
//   //             child: Image.asset('images/dice1.png'),
//   //           ),
//   //         )
//   //       ],
//   //     ),
//   //   );
//   // }
// }
