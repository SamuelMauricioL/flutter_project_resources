import 'package:flutter_project_resources/manager/product_manager.dart';
import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/repositories/product_repository.dart';

class ProductService {
  final productManager = ProductManager();
  final productRepository = ProductRepository();

  Future<List<ProductModel>> syncProducts() async {
    final products = await productManager.getProducts();
    await saveProducts(products);
    return await findAvailableProducts();
  }

  Future<List<ProductModel>> getProductsFromDb() async {
    return await productRepository.findAll();
  }

  Future<void> saveProducts(List<ProductModel> products) async {
    await productRepository.saveMany(products);
  }

  Future<List<ProductModel>> findAvailableProducts() async {
    return await productRepository.findAvailableProducts();
  }

  Future<void> updateProduct(ProductModel product) async {
    await productRepository.updateProduct(product);
  }

  Future<List<ProductModel>> findByProductSku(String sku) async {
    if (sku == "") {
      return await productRepository.findAll();
    } else {
      return await productRepository.findByProductSku(sku);
    }
  }

  Future<void> deleteProductBySku(String? sku) async {
    await productRepository.deleteProductBySku(sku);
  }

  Future<void> deleteProduct(ProductModel product) async {
    await productRepository.deleteProduct(product);
  }
}
