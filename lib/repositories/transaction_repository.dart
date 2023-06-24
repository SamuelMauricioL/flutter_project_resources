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
}
