import 'package:atdd_calculator/calculatorModel.dart';
import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final String number;

  NumberButton(this.number);

  @override
  Widget build(context) {
    final model = CalculatorModel.of(context);

    return Tooltip(
      message: number,
      child: FlatButton(
        child: Text(number),
        onPressed: () => model.give(number),
      ),
    );
  }
}
