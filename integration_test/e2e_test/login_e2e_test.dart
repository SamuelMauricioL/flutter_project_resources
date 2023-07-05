import 'package:flutter_project_resources/core/testing/utils/e2e_utils.dart';
import 'package:flutter_project_resources/core/testing/values/key_widgets.dart';
import 'package:flutter_project_resources/main.dart' as app;
import 'package:flutter_project_resources/core/testing/common/e2e_test_abstraction.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test/unit_test/assertion.dart';

void main() async {
  await E2ETestAbstraction.configure();

  group('Login E2E Test', () {
    e2eTest('should login and store session', (tester) async {
      await app.main();
      await tester.pumpAndSettle();

      assertWidgetExist(KeyWidgets.loginColumnKey);
      assertWidgetExist(KeyWidgets.loginButtonKey);

      var loginButton = getWidget(KeyWidgets.loginButtonKey);

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      // await app.main();
      // await tester.pumpAndSettle();

      // assertWidgetExist(KeyWidgets.loginButtonKey);
      // assertWidgetExist(KeyWidgets.emailFieldKey);
      // assertWidgetExist(KeyWidgets.passwordFieldKey);

      // var emailField = getWidget(KeyWidgets.emailFieldKey);
      // var passwordField = getWidget(KeyWidgets.passwordFieldKey);
      // var loginButton = getWidget(KeyWidgets.loginButtonKey);

      // await tester.enterText(emailField, 'test@test.com');
      // await tester.enterText(passwordField, 'test');
      // await tester.tap(loginButton);
      // await tester.pumpAndSettle();
    });
  });
}
