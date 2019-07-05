import 'package:scoped_model/scoped_model.dart';

class CalculatorModel extends Model {
  double _output = 0;

  double get output => _output;

  void give(int number) {
    _output = number.toDouble();

    notifyListeners();
  }

  static CalculatorModel of(context) =>
      ScopedModel.of<CalculatorModel>(context);
}
