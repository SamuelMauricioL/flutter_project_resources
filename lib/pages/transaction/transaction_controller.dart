import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:flutter_project_resources/services/transaction_service.dart';
import 'package:get/get.dart';

class TransactionController extends GetxController {
  final _transactionService = TransactionService();

  final RxList<TransactionModel> _transactions = <TransactionModel>[].obs;
  List<TransactionModel> get transactions => _transactions;

  Future<void> syncTransactions() async {
    await _transactionService.syncTransactions();
  }

  void getTransactions() async {
    _transactions.value = await _transactionService.findAvailableTransactions();
  }

  @override
  void onInit() {
    syncTransactions().then((_) => getTransactions());
    super.onInit();
  }
}
