import 'package:ogurets/ogurets.dart';
import 'countFeature/CountStepDefs.dart';
import 'countFeature/session.dart';

void main(args) async {
  var session = new Session();
  var def = new OguretsOpts()
    ..feature("test_acceptance/countFeature/")
    ..debug()
    ..instance(session)
    ..failOnMissingSteps(false)
    ..step(CountStepDefs);

  await session.start();
  await def.run().whenComplete(() => session.shutDown());
}
