import 'package:test/test.dart';
import 'package:atdd_calculator/calculatorModel.dart';

void main() {
  group('Calculator model', () {
    test('output should default to 0', () {
      final calculatorModel = CalculatorModel();

      expect(calculatorModel.output, 0);
    });
  });
}
