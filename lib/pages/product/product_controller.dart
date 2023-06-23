import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/services/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final _productService = ProductService();

  final RxList<ProductModel> _products = <ProductModel>[].obs;
  List<ProductModel> get products => _products;

  Future<void> syncProducts() async {
    await _productService.syncProducts();
  }

  void getProducts() async {
    _products.value = await _productService.findAvailableProducts();
  }

  @override
  void onInit() {
    syncProducts().then((_) => getProducts());
    super.onInit();
  }

  void updateProduct(ProductModel product) async {
    await _productService.updateProduct(product);
    getProducts();
  }

  void getProductBySku(String sku) async {
    _products.value = await _productService.findByProductSku(sku);
  }

  void deleteProductBySku(String? sku) async {
    await _productService.deleteProductBySku(sku);
    getProducts();
  }

  void deleteProduct(ProductModel product) async {
    await _productService.deleteProduct(product);
    getProducts();
  }
}
