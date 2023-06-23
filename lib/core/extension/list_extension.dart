import 'package:optional/optional.dart';

extension ListOpt<T> on List<T> {
  Optional<T> firstWhereOptional(bool Function(T element) test) {
    for (var element in this) {
      if (test(element)) return Optional.of(element);
    }
    return const Optional.empty();
  }
}

extension Comparison<T> on List<T> {
  bool isEqual(List<T> anotherList) {
    for (var element in this) {
      if (!anotherList.contains(element)) return false;
    }
    return true;
  }
}
