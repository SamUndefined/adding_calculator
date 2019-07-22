# Adding Calculator built through ATDD

# Run widget tests
`flutter test`

# Run unit tests
`flutter test test/unit/calculatorModelTest.dart`

## Run acceptance tests
- Launch desired emulator
- `flutter run --target=test_acceptance/app.dart`
- The above command has output the url of the **observatory debugger**. It will look similar to `http://127.0.0.1:62777/qkWMRZ7bHTQ=/`. Copy this url and paste it into `test_acceptance/session.dart` on line 3 (into the `dartVmServiceUrl` constant)
- In another terminal tab/window (still in the project directory), run `dart --enable-asserts test_acceptance/runner.dart`
