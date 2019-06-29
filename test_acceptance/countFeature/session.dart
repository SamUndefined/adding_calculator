import 'package:flutter_driver/flutter_driver.dart';
import 'dart:io';

class Session {
  FlutterDriver _driver;

  FlutterDriver get driver => _driver;

  Future<FlutterDriver> start() async {
    _driver = await FlutterDriver.connect(
        dartVmServiceUrl: 'http://127.0.0.1:53479/9Fw3y4Wqtz0=/');

    return _driver;
  }

  void shutDown() async {
    await _driver?.close();
  }
}
