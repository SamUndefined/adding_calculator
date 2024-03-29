import 'package:flutter_driver/flutter_driver.dart';
import 'package:ogurets/ogurets.dart';
import '../session.dart';

class AddStepDefs {
  Session session;

  AddStepDefs(this.session);

  @Given(r'I have tapped a number')
  void iOpenHaveTappedANumber() async {
    final oneFinder = find.byTooltip('1');

    await session.driver.tap(oneFinder);
  }

  @When(r'I tap the plus sign')
  void iTapTheThePlusSign() async {
    final plusFinder = find.byTooltip('Plus');

    await session.driver.tap(plusFinder);
  }

  @And(r'I tap another number')
  void iTapAnotherNumber() async {
    final twoFinder = find.byTooltip('2');

    await session.driver.tap(twoFinder);
  }

  @And(r'I tap the equals sign')
  void iTapTheEqualsSign() async {
    final equalsFinder = find.byTooltip('Equals');

    await session.driver.tap(equalsFinder);
  }

  @Then(r'I should see the sum of those two numbers in the output')
  void iShouldSeeTheSumOfThoseTwoNumbersInTheOutput() async {
    final outputFinder = find.byValueKey('Output');
    final actualOutput = await session.driver.getText(outputFinder);

    assert(actualOutput == "3");
  }
}
