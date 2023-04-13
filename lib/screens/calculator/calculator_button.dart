import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  String digit;
  Function  onClick;
  CalculatorButton( this.digit, this.onClick);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            margin: const EdgeInsets.all(4),
            child: ElevatedButton(
                onPressed: () {
                  onClick(digit);
                }, child: Text("$digit"
            ,style: const TextStyle(fontSize: 24,
                  fontWeight: FontWeight.bold),)
            )
        )
    );
  }
}
