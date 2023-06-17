import 'package:flutter_project_resources/api/product_api.dart';
import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/repositories/product_repository.dart';

class ProductService {
  final productApi = ProductApi();
  final productRepository = ProductRepository();

  Future<void> syncProducts() async {
    final products = productApi.getProducts();
    await saveProducts(products);
  }

  Future<List<ProductModel>> getProductsFromDb() async {
    return await productRepository.findAll();
  }

  Future<void> saveProducts(List<ProductModel> products) async {
    await productRepository.saveMany(products);
  }
}
