import 'package:scoped_model/scoped_model.dart';

class CalculatorModel extends Model {
  String _output;
  String _default = '0';

  String get output => _output ?? _default;

  void give(String number) {
    if (_output == null) {
      _output = number;
    } else {
      _output += number;
    }

    notifyListeners();
  }

  void plus() {
    if (_output == null) {
      _output = '$_default+';
    } else {
      _output += '+';
    }

    notifyListeners();
  }

  static CalculatorModel of(context) =>
      ScopedModel.of<CalculatorModel>(context);
}
