import 'package:flutter_project_resources/api/transaction_api.dart';
import 'package:flutter_project_resources/http/error_handler/error_handler.dart';
import 'package:flutter_project_resources/http/exceptions/app_exception.dart';
import 'package:flutter_project_resources/http/response/backend_response/backend_response.dart';
import 'package:flutter_project_resources/manager/common/base_manager.dart';
import 'package:flutter_project_resources/models/transaction_model.dart';

class TransactionManager extends BaseManager<TransactionApi> {
  TransactionManager({super.mockedApi});

  Future<List<TransactionModel>> getTransactions() async {
    final result = await api.getTransactions();
    if (result.error == null) {
      final response = BackendResponse<TransactionModel>.searchResult(
        result.data,
        TransactionModel.fromJsonModel,
      );
      return response.data;
    }

    return Future.error(AppException(errorHandler(result)));
  }
}
