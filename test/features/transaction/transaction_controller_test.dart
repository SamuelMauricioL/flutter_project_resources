import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:flutter_project_resources/pages/transaction/transaction_controller.dart';
import 'package:flutter_project_resources/services/transaction_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

import '../../unit_test/assertion.dart';
import '../../utils/mocked_transaction.dart';
import 'transaction.mocks.dart';

Future<void> main() async {
  late TransactionController controller;
  late MockTransactionService mockTransactionService;

  setUp(() async {
    mockTransactionService = MockTransactionService();
    _initMocks(
      mockTransactionService,
    );
    controller = TransactionController();
  });

  group("edit transactions", () {
    final mockedTransactions = getMockedTransactions();
    void setUpMockFindAvailableTransactions() {
      when(mockTransactionService.findAvailableTransactions())
          .thenAnswer((_) async => mockedTransactions);
    }

    void setUpMockUpdateTransaction(TransactionModel transaction) {
      when(mockTransactionService.updateTransaction(transaction)).thenAnswer((_) async {
        final index = mockedTransactions.indexWhere((p) => p.id == transaction.id);
        mockedTransactions[index] = transaction;
      });
    }

    void setUpMockDeleteTransaction(TransactionModel transaction) {
      when(mockTransactionService.deleteTransaction(transaction))
          .thenAnswer((_) async => mockedTransactions.remove(transaction));
    }

    test('should find available Transactions', () async {
      setUpMockFindAvailableTransactions();
      await controller.findAvailableTransactions();
      final transactions = controller.transactions;
      // assert
      assertNotNull(transactions);
      expect(transactions, isNotEmpty);
      expect(transactions, equals(mockedTransactions));
    });

    test('should update a Transactions', () async {
      setUpMockFindAvailableTransactions();
      await controller.findAvailableTransactions();

      mockedTransactions.first.quantity = 2;
      setUpMockUpdateTransaction(mockedTransactions.first);
      await controller.updateTransaction(mockedTransactions.first);
      // assert
      assertNotNull(controller.transactions);
      expect(controller.transactions, equals(mockedTransactions));
    });

    test('should delete a transaction', () async {
      setUpMockFindAvailableTransactions();
      await controller.findAvailableTransactions();

      final transactionToDelete = mockedTransactions[2];
      setUpMockDeleteTransaction(transactionToDelete);
      await controller.deleteTransaction(transactionToDelete);

      // assert
      assertNotNull(controller.transactions);
      expect(controller.transactions, equals(mockedTransactions));
    });
  });
}

void _initMocks(
  MockTransactionService mockTransactionService,
) {
  Get.put<TransactionService>(mockTransactionService);
}
