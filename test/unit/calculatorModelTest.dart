import 'package:test/test.dart';
import 'package:atdd_calculator/calculatorModel.dart';

void main() {
  group('Calculator model', () {
    test('output should default to 0', () {
      final calculatorModel = CalculatorModel();

      expect(calculatorModel.output, '0');
    });

    test('default output should be overwritten by new numbers', () {
      final calculatorModel = CalculatorModel();

      calculatorModel.give('5');

      expect(calculatorModel.output, '5');
    });

    test('adds a plus sign to output', () {
      final calculatorModel = CalculatorModel();

      calculatorModel.plus();

      expect(calculatorModel.output, '0+');
    });

    test('appends previously given numbers rather than overwriting them', () {
      final calculatorModel = CalculatorModel();

      calculatorModel.give('5');
      calculatorModel.give('7');

      expect(calculatorModel.output, '57');
    });
  });
}
