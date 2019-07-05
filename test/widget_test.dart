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
    final zero = find.byTooltip('0');
    final one = find.byTooltip('1');
    final two = find.byTooltip('2');
    final three = find.byTooltip('3');
    final four = find.byTooltip('4');
    final five = find.byTooltip('5');
    final six = find.byTooltip('6');
    final seven = find.byTooltip('7');
    final eight = find.byTooltip('8');
    final nine = find.byTooltip('9');

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

  testWidgets('Shows a number when you press that number',
      (WidgetTester tester) async {
    await tester.pumpWidget(App());

    final threeButton = find.byTooltip('3');
    final output = find.byTooltip('Output');
    final correctOutputText = find.descendant(
      of: output,
      matching: find.text('3'),
    );

    expect(threeButton, findsOneWidget);

    await tester.tap(threeButton);
    await tester.pump();

    expect(correctOutputText, findsOneWidget);
  });

  testWidgets('has a plus sign', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    final plusSign = find.byTooltip('Plus');

    expect(plusSign, findsOneWidget);
  });

  testWidgets('+ shows up in output when plus is tapped',
      (WidgetTester tester) async {
    await tester.pumpWidget(App());
    final plusSign = find.byTooltip('Plus');
    final output = find.byTooltip('Output');
    final correctOutputText = find.descendant(
      of: output,
      matching: find.text('0+'),
    );

    await tester.tap(plusSign);
    await tester.pump();

    expect(correctOutputText, findsOneWidget);
  });

  testWidgets('Tapping plus and a number results in 0 + that number',
      (WidgetTester tester) async {
    await tester.pumpWidget(App());
    final plusSign = find.byTooltip('Plus');
    final seven = find.byTooltip('7');
    final output = find.byTooltip('Output');
    final correctOutputText = find.descendant(
      of: output,
      matching: find.text('0+7'),
    );

    await tester.tap(plusSign);
    await tester.tap(seven);
    await tester.pump();

    expect(correctOutputText, findsOneWidget);
  });

  testWidgets('Tapping only equals results in 0', (WidgetTester tester) async {
    await tester.pumpWidget(App());
    final equalsSign = find.byTooltip('Equals');
    final output = find.byTooltip('Output');
    final correctOutputText = find.descendant(
      of: output,
      matching: find.text('0'),
    );

    await tester.tap(equalsSign);
    await tester.pump();

    expect(correctOutputText, findsOneWidget);
  });
}
