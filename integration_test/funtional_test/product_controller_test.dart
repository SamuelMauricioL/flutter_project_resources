import 'package:flutter_project_resources/core/testing/common/functional_test_abstraction.dart';
import 'package:flutter_project_resources/pages/product/product_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

import '../../test/unit_test/assertion.dart';

void main() async {
  late ProductController controller;

  await FunctionalTestAbstraction.configure(beforeAll: () async {
    controller = Get.find<ProductController>();
    await controller.syncProducts();
    assertNotNull(controller.products);
  });

  functionalTest('should find available products', (tester) async {
    await controller.findAvailableProducts();
    assertNotNull(controller.products);
  });

  functionalTest('should update a Product', (tester) async {
    final products = controller.products;
    final product = products.first;
    product.name = 'new product';
    await controller.updateProduct(product);
    final updatedProduct = controller.products.first;
    expect(updatedProduct, equals(product));
  });

  functionalTest('should delete a product', (tester) async {
    final products = controller.products;
    final product = products.first;
    await controller.deleteProduct(product);
    final updatedProducts = controller.products;
    expect(updatedProducts, isNot(contains(product)));
  });
}
