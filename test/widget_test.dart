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

  testWidgets('Shows buttons for 0-9', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    final zero = find.byTooltip('Zero');
    final one = find.byTooltip('One');
    final two = find.byTooltip('Two');
    final three = find.byTooltip('Three');
    final four = find.byTooltip('Four');
    final five = find.byTooltip('Five');
    final six = find.byTooltip('Six');
    final seven = find.byTooltip('Seven');
    final eight = find.byTooltip('Eight');
    final nine = find.byTooltip('Nine');

    expect(zero, findsOneWidget);
    expect(one, findsOneWidget);
    expect(two, findsOneWidget);
    expect(three, findsOneWidget);
    expect(four, findsOneWidget);
    expect(five, findsOneWidget);
    expect(six, findsOneWidget);
    expect(seven, findsOneWidget);
    expect(eight, findsOneWidget);
    expect(nine, findsOneWidget);
  });
}
