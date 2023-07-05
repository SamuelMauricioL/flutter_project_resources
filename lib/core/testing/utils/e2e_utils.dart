// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

Finder getWidget(String key) {
  return find.byKey(Key(key));
}

Finder getWidgetByText(String text) {
  return find.text(text);
}
