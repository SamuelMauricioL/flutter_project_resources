import 'package:flutter_project_resources/api/transaction_api.dart';
import 'package:flutter_project_resources/manager/transaction_manager.dart';
import 'package:flutter_project_resources/services/transaction_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  TransactionApi,
  TransactionManager,
  TransactionService,
], customMocks: [
  MockSpec<TransactionApi>(as: #MockAssetRemoteDatasource),
  MockSpec<TransactionManager>(as: #MockAssetApiHandler),
  MockSpec<TransactionService>(as: #MockTransactionServiceStorage),
])
void transaction() {}
