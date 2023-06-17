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
    _products.value = await _productService.getProductsFromDb();
  }

  @override
  void onInit() {
    syncProducts().then((_) => getProducts());
    super.onInit();
  }

  // set products(List<ProductModel> value) {
  //
  // }

  // void addProduct(ProductModel product) {
  //
  // }

  void removeProduct(ProductModel product) {
    _products.remove(product);
  }

  // void clearProducts() {
  //
  // }
}
