import 'package:flutter_project_resources/pages/product/product_controller.dart';
import 'package:get/get.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
