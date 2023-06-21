import 'package:flutter_project_resources/api/product_api.dart';
import 'package:flutter_project_resources/http/error_handler/error_handler.dart';
import 'package:flutter_project_resources/http/exceptions/app_exception.dart';
import 'package:flutter_project_resources/http/response/backend_response/backend_response.dart';
import 'package:flutter_project_resources/manager/common/base_manager.dart';
import 'package:flutter_project_resources/models/product_model.dart';

class ProductManager extends BaseManager<ProductApi> {
  ProductManager({super.mockedApi});

  Future<List<ProductModel>> getProducts() async {
    final result = await api.getProducts();
    if (result.error == null) {
      final response = BackendResponse<ProductModel>.searchResult(
        result.data,
        ProductModel.fromJsonModel,
      );
      return response.data;
    }

    return Future.error(AppException(errorHandler(result)));
  }
}
