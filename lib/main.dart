import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Tooltip(
            message: 'Output',
            child: Text('0'),
          ),
          Tooltip(
            message: 'Zero',
            child: FlatButton(
              child: Text('0'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'One',
            child: FlatButton(
              child: Text('1'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Two',
            child: FlatButton(
              child: Text('2'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Three',
            child: FlatButton(
              child: Text('3'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Four',
            child: FlatButton(
              child: Text('4'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Five',
            child: FlatButton(
              child: Text('5'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Six',
            child: FlatButton(
              child: Text('6'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Seven',
            child: FlatButton(
              child: Text('7'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Eight',
            child: FlatButton(
              child: Text('8'),
              onPressed: () => {},
            ),
          ),
          Tooltip(
            message: 'Nine',
            child: FlatButton(
              child: Text('9'),
              onPressed: () => {},
            ),
          ),
        ],
      ),
    );
  }
}
