import 'package:ogurets/ogurets.dart';
import 'addFeature/addStepDefs.dart';
import 'session.dart';

void main(args) async {
  var session = new Session();
  var def = new OguretsOpts()
    ..feature("test_acceptance/addFeature/")
    ..debug()
    ..instance(session)
    ..failOnMissingSteps(false)
    ..step(AddStepDefs);

  await session.start();
  await def.run().whenComplete(() => session.shutDown());
}
