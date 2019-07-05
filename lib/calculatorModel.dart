import 'package:scoped_model/scoped_model.dart';

class CalculatorModel extends Model {
  final String _default = '0';
  String _output;

  bool get _noInputYet => _output == null;
  String get output => _output ?? _default;

  static CalculatorModel of(context) =>
      ScopedModel.of<CalculatorModel>(context);

  void give(String number) {
    if (_noInputYet) {
      _output = number;
    } else {
      _output += number;
    }

    notifyListeners();
  }

  void plus() {
    if (_noInputYet) {
      _output = _default;
    }

    _output += '+';

    notifyListeners();
  }
}
