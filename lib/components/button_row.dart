import 'package:calculator2/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow({super.key, required this.buttons});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: buttons
          .map((button) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: button,
                ),
              ))
          .toList(),
    );
  }
}
