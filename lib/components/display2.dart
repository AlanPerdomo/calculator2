import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Display2 extends StatelessWidget {
  final String text;

  const Display2(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0.5,
      child: Container(
        color: const Color.fromRGBO(48, 48, 48, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1),
              child: AutoSizeText(
                text,
                minFontSize: 20,
                maxFontSize: 80,
                maxLines: 1,
                textAlign: TextAlign.end,
                style: const TextStyle(
                  fontWeight: FontWeight.w100,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
