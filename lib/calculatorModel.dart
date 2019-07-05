import 'package:scoped_model/scoped_model.dart';

class CalculatorModel extends Model {
  String _output = '0';

  String get output => _output.toString();

  void give(int number) {
    _output = number.toString();

    notifyListeners();
  }

  void plus() {
    _output += '+';

    notifyListeners();
  }

  static CalculatorModel of(context) =>
      ScopedModel.of<CalculatorModel>(context);
}
