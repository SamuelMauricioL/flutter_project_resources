import 'package:flutter_project_resources/core/testing/common/e2e_test_abstraction.dart';
import 'package:flutter_project_resources/core/testing/utils/e2e_utils.dart';
import 'package:flutter_project_resources/core/testing/values/key_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_project_resources/main.dart' as app;

import '../../test/unit_test/assertion.dart';

void main() async {
  await E2ETestAbstraction.configure();

  group('Transaction E2E test', () {
    e2eTest('should enter to transaction page', (tester) async {
      await app.main();
      await tester.pumpAndSettle();

      assertWidgetExist(KeyWidgets.loginColumnKey);
      assertWidgetExist(KeyWidgets.loginButtonKey);

      var loginButton = getWidget(KeyWidgets.loginButtonKey);

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      assertWidgetExist(KeyWidgets.productButtonKey);
      assertWidgetExist(KeyWidgets.transactionButtonKey);

      var transactionButton = getWidget(KeyWidgets.transactionButtonKey);

      await tester.tap(transactionButton);
      await tester.pumpAndSettle();
    });
  });
}