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
  int leftDiceIndex = 3;
  int rightDiceIndex = 5;

  @override
  Widget build(BuildContext context) {
    void onHandleClick() => {
          setState(() {
            leftDiceIndex = (Random().nextInt(6) + 1);
            rightDiceIndex = (Random().nextInt(6) + 1);
          }),
        };

    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: onHandleClick,
                child: Image.asset("images/dice$leftDiceIndex.png")),
          ),
          Expanded(
              child: TextButton(
                  onPressed: onHandleClick,
                  child: Image.asset("images/dice$rightDiceIndex.png"))),
        ],
      ),
    );
  }
}
