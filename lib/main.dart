import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade800,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePage();
}

class _DicePage extends State<DicePage> {
  int leftDiceIndex = 1;
  int rightDiceIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () => {
                      setState(() {
                        leftDiceIndex = (Random().nextInt(6) + 1);
                      }),
                      debugPrint("Left button is selected"),
                    },
                child: Image.asset("images/dice$leftDiceIndex.png")),
          ),
          Expanded(
              child: TextButton(
                  onPressed: () => {
                        setState(() {
                          rightDiceIndex = (Random().nextInt(6) + 1);
                        }),
                        debugPrint("Right button is pressed"),
                      },
                  child: Image.asset("images/dice$rightDiceIndex.png"))),
        ],
      ),
    );
  }
}
