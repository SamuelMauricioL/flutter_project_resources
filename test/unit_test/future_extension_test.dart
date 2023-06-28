import 'package:flutter_project_resources/core/extension/future_extension.dart';
import 'package:flutter_project_resources/db/exceptions/db_exception.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:optional/optional.dart';

import 'assertion.dart';

void main() async {
  test('should return value after future is completed', () async {
    await heavyCalculation().complete(assertValue).showErrorIfAny();
  });

  test('should return null after future fails without showing error', () async {
    await heavyCalculationWithError()
        .complete(assertValueNull)
        .onException(assertError);
  });

  test(
      'should call error function and assert exception type when passing onException',
      () async {
    await heavyCalculationWithException()
        .complete(assertValueNull)
        .onException(assertException);
  });
}

Future<void> assertValue(Optional<int> optional) async {
  assertTrue(optional.isPresent);
  assertEqual(optional.value, 21);
}

Future<void> assertValueNull(Optional<int> optional) async {
  assertTrue(optional.isEmpty);
}

Future<void> assertError(error) async {
  assertTrue(error is Error);
}

Future<void> assertException(error) async {
  assertTrue(error is Exception);
}

Future<int> heavyCalculation() {
  return Future.delayed(const Duration(seconds: 3), () {
    return 21;
  });
}

Future<int> heavyCalculationWithError() {
  return Future.delayed(const Duration(seconds: 3), () {
    throw UnimplementedError();
  });
}

Future<int> heavyCalculationWithException() {
  return Future.delayed(const Duration(seconds: 3), () {
    throw DbException();
  });
}
