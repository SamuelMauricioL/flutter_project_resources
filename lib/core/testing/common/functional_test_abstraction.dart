// ignore_for_file: depend_on_referenced_packages

import 'package:flutter_project_resources/di/dependency_injection.dart';
import 'package:flutter_project_resources/environment_build/environment_build.dart';
import 'package:flutter_project_resources/widgets/loading_dialog/loading_dialog.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:integration_test/integration_test.dart';
import 'package:meta/meta.dart';
import '../utils/fake_dialog.dart';
import 'controller_injection.dart';

class FunctionalTestAbstraction {
  static Future<void> configure(
      {Function? beforeAll, Function? beforeEach, Function? afterAll}) async {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    setUpAll(() async {
      LoadingDialog.instance = FakeDialog();
      Get.testMode = true;
      await DependencyInjection.init();
      await ControllerInjection.init();
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
functionalTest(String description, WidgetTesterCallback callback,
    {bool? skip}) {
  testWidgets(description, callback, skip: skip);
}
