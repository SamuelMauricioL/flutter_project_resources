import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:flutter_project_resources/services/transaction_service.dart';
import 'package:get/get.dart';
import 'package:optional_extensions/optional_extensions.dart';

class TransactionController extends GetxController {
  final _transactionService = Get.find<TransactionService>();

  final RxList<TransactionModel> _transactions = <TransactionModel>[].obs;
  List<TransactionModel> get transactions => _transactions;

  Future<void> syncTransactions() async {
    await _transactionService
        .syncTransactions()
        .showLoadingDialog()
        .complete(getTransactions)
        .showErrorIfAny();
  }

  void getTransactions(Optional<List<TransactionModel>> transactions) async {
    transactions
        .ifPresent((transactions) => _transactions.value = transactions);
  }

  Future<void> findAvailableTransactions() async {
    _transactions.value = await _transactionService.findAvailableTransactions();
  }

  @override
  void onReady() {
    syncTransactions();
    super.onReady();
  }

  Future<void> updateTransaction(TransactionModel transaction) async {
    await _transactionService.updateTransaction(transaction);
    findAvailableTransactions();
  }

  Future<void> getTransationById(String id) async {
    _transactions.value = await _transactionService.findByTransactionId(id);
  }

  Future<void> deleteTransactionById(String? id) async {
    await _transactionService.deleteTransactionById(id);
    findAvailableTransactions();
  }

  Future<void> deleteTransaction(TransactionModel transaction) async {
    await _transactionService.deleteTransaction(transaction);
    findAvailableTransactions();
  }
}
