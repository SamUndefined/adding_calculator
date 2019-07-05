import 'package:atdd_calculator/calculatorModel.dart';
import 'package:atdd_calculator/numberButton.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final zeroThroughNineButtons =
      List.generate(10, (num) => NumberButton(num.toString()));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: ScopedModel<CalculatorModel>(
        model: CalculatorModel(),
        child: ScopedModelDescendant<CalculatorModel>(
          builder: (context, child, model) => ListView(
                children: <Widget>[
                  Tooltip(
                    message: 'Output',
                    child: Text(model.output, key: Key('Output')),
                  ),
                  GridView.count(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: <Widget>[
                      ...zeroThroughNineButtons,
                      Tooltip(
                        message: 'Plus',
                        child: FlatButton(
                          child: Text('+'),
                          onPressed: () => model.plus(),
                        ),
                      ),
                      Tooltip(
                        message: 'Equals',
                        child: FlatButton(
                          child: Text('='),
                          onPressed: () => model.calculate(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
        ),
      ),
    );
  }
}
