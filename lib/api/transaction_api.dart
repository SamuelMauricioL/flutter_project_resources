import 'package:flutter_project_resources/http/http.dart';
import 'package:flutter_project_resources/http/http_method.dart';
import 'package:flutter_project_resources/http/http_result.dart';
import 'package:get/get.dart';

class TransactionApi {
  final Http _http = Get.find<Http>();

  Future<HttpResult> getTransactions() async {
    final result = _http.request(
      'products/transaction',
      method: HttpMethod.get,
    );
    return result;
  }
}