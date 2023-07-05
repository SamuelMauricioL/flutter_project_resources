import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:flutter_project_resources/db/data_base.dart';
import 'package:flutter_project_resources/db/shop_base_repository.dart';
import 'package:isar/isar.dart';

class TransactionRepository extends ShopBaseRepository<TransactionModel> {
  TransactionRepository() {
    col = DataBase().isar.transactionModels;
  }

  Future<List<TransactionModel>> findByTransactionIds(List<String> transactionIds) async {
    return transactionIds.isNotEmpty ? await findByIds(transactionIds) : [];
  }

  Future<List<TransactionModel>> findAvailableTransactions() async {
    return col.filter().deletedEqualTo(false).findAll();
  }

  Future<List<TransactionModel>> findByTransactionId(String id) async {
    return col.filter().idEqualTo(id).findAll();
  }
  
  Future<void> updateTransaction(TransactionModel transaction) async {
    await DataBase().isar.writeTxn((isar) => col.put(transaction));
  }

  Future<void> deleteTransactionById(String? id) async {
    var transaction = col.filter().idEqualTo(id).findFirstSync();
    transaction!.deleted = true;
    await DataBase().isar.writeTxn((isar) => col.put(transaction));
  }

  Future<void> deleteTransaction(TransactionModel transaction) async {
    final isarId = transaction.isarId!;
    await DataBase().isar.writeTxn((isar) => col.delete(isarId));
  }
}
