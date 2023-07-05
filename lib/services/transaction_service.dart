import 'package:flutter_project_resources/manager/transaction_manager.dart';
import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:flutter_project_resources/repositories/transaction_repository.dart';

class TransactionService {
  final transactionManager = TransactionManager();
  final transactionRepository = TransactionRepository();

  Future<List<TransactionModel>> syncTransactions() async {
    final transactions = await transactionManager.getTransactions();
    await saveTransactions(transactions);
    return await findAvailableTransactions();
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

  Future<void> updateTransaction(TransactionModel transaction) async {
    await transactionRepository.updateTransaction(transaction);
  }

  Future<List<TransactionModel>> findByTransactionId(String id) async {
    if (id == "") {
      return await transactionRepository.findAll();
    } else {
      return await transactionRepository.findByTransactionId(id);
    }
  }

  Future<void> deleteTransactionById(String? id) async {
    await transactionRepository.deleteTransactionById(id);
  }

  Future<void> deleteTransaction(TransactionModel transaction) async {
    await transactionRepository.deleteTransaction(transaction);
  }
}
