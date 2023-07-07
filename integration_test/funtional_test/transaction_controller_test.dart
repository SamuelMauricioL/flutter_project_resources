import 'package:flutter_project_resources/core/testing/common/functional_test_abstraction.dart';
import 'package:flutter_project_resources/pages/transaction/transaction_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import '../../test/unit_test/assertion.dart';

void main() async {
  late TransactionController controller;

  await FunctionalTestAbstraction.configure(beforeAll: () async {
    controller = Get.find<TransactionController>();
    await controller.syncTransactions();
    assertNotNull(controller.transactions);
  });

  functionalTest('should find available transactions', (tester) async {
    await controller.findAvailableTransactions();
    assertNotNull(controller.transactions);
  });

  functionalTest('should update a Transaction', (tester) async {
    final transactions = controller.transactions;
    final transaction = transactions.first;
    transaction.comment = 'new comment in transaction';
    await controller.updateTransaction(transaction);
    final updatedTransaction = controller.transactions.first;
    expect(updatedTransaction, equals(transaction));
  });

  functionalTest('should delete a transaction', (tester) async {
    final transactions = controller.transactions;
    final transaction = transactions.first;
    await controller.deleteTransaction(transaction);
    final updatedTransactions = controller.transactions;
    expect(updatedTransactions, isNot(contains(transaction)));
  });
}
