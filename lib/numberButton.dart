import 'package:flutter/material.dart';

class NumberButton extends StatelessWidget {
  final int number;

  NumberButton(this.number);

  @override
  Widget build(context) {
    return Tooltip(
      message: number.toString(),
      child: FlatButton(
        child: Text(number.toString()),
        onPressed: () => {},
      ),
    );
  }
}
