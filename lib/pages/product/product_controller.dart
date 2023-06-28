import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/services/product_service.dart';
import 'package:get/get.dart';
import 'package:flutter_project_resources/core/extension/future_extension.dart';
import 'package:optional/optional.dart';

class ProductController extends GetxController {
  final _productService = Get.find<ProductService>();

  final RxList<ProductModel> _products = <ProductModel>[].obs;
  List<ProductModel> get products => _products;

  Future<void> syncProducts() async {
    await _productService
        .syncProducts()
        .showLoadingDialog()
        .complete(getProducts)
        .showErrorIfAny();
  }

  void getProducts(Optional<List<ProductModel>> products) async {
    products.ifPresent((products) => _products.value = products);
  }

  Future<void> findAvailableProducts() async {
    _products.value = await _productService.findAvailableProducts();
  }

  @override
  void onReady() {
    syncProducts();
    super.onReady();
  }

  Future<void> updateProduct(ProductModel product) async {
    await _productService.updateProduct(product);
    findAvailableProducts();
  }

  Future<void> getProductBySku(String sku) async {
    _products.value = await _productService.findByProductSku(sku);
  }

  Future<void> deleteProductBySku(String? sku) async {
    await _productService.deleteProductBySku(sku);
    findAvailableProducts();
  }

  Future<void> deleteProduct(ProductModel product) async {
    await _productService.deleteProduct(product);
    findAvailableProducts();
  }
}
