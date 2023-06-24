import 'package:flutter_project_resources/core/extension/future_extension.dart';
import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:flutter_project_resources/services/transaction_service.dart';
import 'package:get/get.dart';
import 'package:optional/optional.dart';

class TransactionController extends GetxController {
  final _transactionService = TransactionService();

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
    transactions.ifPresent((transactions) => _transactions.value = transactions);
  }

  @override
  void onReady() {
    syncTransactions();
    super.onReady();
  }
}
