import 'package:flutter_test/flutter_test.dart';
import 'package:atdd_calculator/main.dart';

void main() {
  testWidgets('Shows 0 on initialization', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    final outputTooltip = find.byTooltip('Output');
    final outputText = find.descendant(
      of: outputTooltip,
      matching: find.text('0'),
    );

    expect(outputText, findsOneWidget);
  });
}
