import 'package:flutter_project_resources/manager/transaction_manager.dart';
import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:flutter_project_resources/repositories/transaction_repository.dart';

class TransactionService {
  final transactionManager = TransactionManager();
  final transactionRepository = TransactionRepository();

  Future<void> syncTransactions() async {
    final transactions = await transactionManager.getTransactions();
    await saveTransactions(transactions);
  }

  Future<List<TransactionModel>> getTransactionsFromDb() async {
    return await transactionRepository.findAll();
  }

  Future<void> saveTransactions(List<TransactionModel> transactions) async {
    await transactionRepository.saveMany(transactions);
  }

  Future<List<TransactionModel>> findAvailableTransactions() async {
    return await transactionRepository.findAvailableTransactions();
  }
}
