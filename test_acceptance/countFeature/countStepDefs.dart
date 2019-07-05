import 'package:flutter_driver/flutter_driver.dart';
import 'package:ogurets/ogurets.dart';
import '../session.dart';

class CountStepDefs {
  Session session;

  CountStepDefs(this.session);

  @Given(r'I open the app')
  void iOpenTheApp() async {}

  @When(r'I tap the incrememnt button')
  void iTapTheIncrementButton() async {
    final incrementFinder = find.byValueKey('increment');

    await session.driver.tap(incrementFinder);
  }

  @Then(r'I should see 1')
  void iShouldSeeOne() async {
    final counterFinder = find.byValueKey('counter');
    final actual = await session.driver.getText(counterFinder);

    assert(actual == '1');
  }
}
