import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void assertEqual(dynamic actual, dynamic expected) {
  expect(actual, expected);
}

void assertTrue(bool actual) {
  expect(actual, true);
}

void assertFalse(bool actual) {
  expect(actual, false);
}

void assertNull(dynamic actual) {
  expect(actual == null, true);
}

void assertNotNull(dynamic actual) {
  expect(actual != null, true);
}

void assertWidgetExist(String key) {
  expect(find.byKey(Key(key)), findsOneWidget);
}

void assertWidgetExistByText(String text) {
  expect(find.text(text), findsOneWidget);
}
