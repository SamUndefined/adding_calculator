import 'package:scoped_model/scoped_model.dart';

class CalculatorModel extends Model {
  double _output = 0;

  double get output => _output;

  void give(int number) {}
}
