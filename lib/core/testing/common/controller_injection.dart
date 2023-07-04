import 'package:flutter_project_resources/pages/home/home_controller.dart';
import 'package:flutter_project_resources/pages/product/product_controller.dart';
import 'package:get/get.dart';

class ControllerInjection {
  static Future<void> init() async {
    Get.lazyPut(() => HomeController());
    Get.lazyPut(() => ProductController());
  }
}
