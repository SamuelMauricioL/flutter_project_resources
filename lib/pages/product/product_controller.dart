import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/services/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  final _productApi = ProductService();

  final RxList<ProductModel> _products = <ProductModel>[].obs;
  List<ProductModel> get products => _products;

  void getProducts() {
    _products.value = _productApi.getProductsFromApi();
  }

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  // set products(List<ProductModel> value) {
  //   _products.value = value;
  // }

  // void addProduct(ProductModel product) {
  //   _products.add(product);
  // }

  void removeProduct(ProductModel product) {
    _products.remove(product);
  }

  // void clearProducts() {
  //   _products.clear();
  // }
}
