import 'package:flutter_project_resources/core/testing/common/e2e_test_abstraction.dart';
import 'package:flutter_project_resources/core/testing/utils/e2e_utils.dart';
import 'package:flutter_project_resources/core/testing/values/key_widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_project_resources/main.dart' as app;

import '../../test/unit_test/assertion.dart';

void main() async {
  await E2ETestAbstraction.configure();

  group('Product E2E test', () {
    e2eTest('should enter to product page and do the search by sku', (tester) async {
      await app.main();
      await tester.pumpAndSettle();

      assertWidgetExist(KeyWidgets.loginColumnKey);
      assertWidgetExist(KeyWidgets.loginButtonKey);

      var loginButton = getWidget(KeyWidgets.loginButtonKey);

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      assertWidgetExist(KeyWidgets.productButtonKey);
      assertWidgetExist(KeyWidgets.transactionButtonKey);

      var productButton = getWidget(KeyWidgets.productButtonKey);

      await tester.tap(productButton);
      await tester.pumpAndSettle();

      assertWidgetExist(KeyWidgets.searchTextFieldKey);
      var searchTextField = getWidget(KeyWidgets.searchTextFieldKey);

      await tester.enterText(searchTextField, 'p');
      await tester.pumpAndSettle();
    });
  });
}