// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_project_resources/environment_build/environment_build.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:meta/meta.dart';

class E2ETestAbstraction {
  static Future<void> configure(
      {Function? beforeAll, Function? beforeEach, Function? afterAll}) async {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    setUpAll(() async {
      await EnvironmentConfig.inite2e();
      if (beforeAll != null) {
        await beforeAll();
      }
    });

    setUp(() async {
      if (beforeEach != null) {
        await beforeEach();
      }
    });

    tearDown(() async {
      if (afterAll != null) {
        await afterAll();
      }
    });
  }
}

@isTest
e2eTest(String description, WidgetTesterCallback callback, {bool? skip}) {
  testWidgets(description, callback, skip: skip);
}
