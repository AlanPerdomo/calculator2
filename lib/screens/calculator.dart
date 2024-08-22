import 'package:calculator2/components/display2.dart';
import 'package:calculator2/models/memory.dart';
import 'package:calculator2/models/memory2.dart';
import 'package:flutter/material.dart';
import 'package:calculator2/components/display.dart';
import 'package:calculator2/components/keyboard.dart';
import 'package:flutter/services.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  final Memory2 memory2 = Memory2();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
      memory2.applyCommand2(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        bottom: false,
        child: Column(
          children: <Widget>[
            Display2(memory2.value),
            Display(memory.value),
            Keyboard(_onPressed),
          ],
        ),
      ),
    );
  }
}
