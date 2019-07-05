import 'package:flutter_driver/flutter_driver.dart';

const dartVmServiceUrl = 'paste url here';

class Session {
  FlutterDriver _driver;

  FlutterDriver get driver => _driver;

  Future<FlutterDriver> start() async {
    _driver = await FlutterDriver.connect(dartVmServiceUrl: dartVmServiceUrl);

    return _driver;
  }

  void shutDown() async {
    await _driver?.close();
  }
}
