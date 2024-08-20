import 'package:flutter/material.dart';
import 'package:calculator2/components/display.dart';
import 'package:calculator2/components/keyboard.dart';

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(text: "Calculator"),
          Keyboard(),
        ],
      ),
    );
  }
}
