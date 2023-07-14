import 'package:flutter_test/flutter_test.dart';
import 'package:optional_extensions/optional_extensions.dart';

void main() {
  group('firstWhereOptional', () {
    test('returns an Optional containing the first matching element', () {
      List<String> values = ['Test1', 'Test2', 'Test3'];
      final actual = values.firstWhereOptional((value) => value == 'Test2');
      expect(actual.isPresent, isTrue);
      expect(actual.value, equals('Test2'));
    });

    test('returns an empty Optional if no matching element is found', () {
      List<String> values = ['Test1', 'Test2', 'Test3'];
      final actual = values.firstWhereOptional((value) => value == 'Test5');
      expect(actual.isPresent, isFalse);
    });
  });
}
