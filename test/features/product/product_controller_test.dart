import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/pages/product/product_controller.dart';
import 'package:flutter_project_resources/services/product_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:mockito/mockito.dart';

import '../../unit_test/assertion.dart';
import '../../utils/mocked_product.dart';
import 'product.mocks.dart';

Future<void> main() async {
  late ProductController controller;
  late MockProductService mockProductService;

  setUp(() async {
    mockProductService = MockProductService();
    _initMocks(
      mockProductService,
    );
    controller = ProductController();
  });

  group("edit products", () {
    final mockedProducts = getMockedProducts();
    // final mockedSku = mockedProducts.first.sku.toString();
    void setUpMockFindAvailableProducts() {
      when(mockProductService.findAvailableProducts())
          .thenAnswer((_) async => mockedProducts);
    }

    void setUpMockUpdateProduct(ProductModel product) {
      when(mockProductService.updateProduct(product)).thenAnswer((_) async {
        final index = mockedProducts.indexWhere((p) => p.sku == product.sku);
        mockedProducts[index] = product;
      });
    }

    // void setUpMockGetProductBySkus() {
    //   when(mockProductService.findByProductSku(mockedSku))
    //       .thenAnswer((_) async => [mockedProducts.first]);
    // }

    void setUpMockDeleteProduct(ProductModel product) {
      when(mockProductService.deleteProduct(product))
          .thenAnswer((_) async => mockedProducts.remove(product));
    }

    test('should find available Products', () async {
      setUpMockFindAvailableProducts();
      await controller.findAvailableProducts();
      final products = controller.products;
      // assert
      assertNotNull(products);
      expect(products, isNotEmpty);
      expect(products, equals(mockedProducts));
    });

    test('should update a Product', () async {
      setUpMockFindAvailableProducts();
      await controller.findAvailableProducts();

      mockedProducts.first.quantity = 2;
      setUpMockUpdateProduct(mockedProducts.first);
      await controller.updateProduct(mockedProducts.first);
      // assert
      assertNotNull(controller.products);
      expect(controller.products, equals(mockedProducts));
    });

    // test('should get a product by SKU', () async {
    //   setUpMockFindAvailableProducts();
    //   await controller.findAvailableProducts();

    //   setUpMockGetProductBySkus();
    //   await controller.getProductBySku(mockedSku);

    //   final productsFiltered = controller.products;
    //   // assert
    //   assertNotNull(controller.products);
    //   expect(productsFiltered, equals([mockedProducts.first]));
    // });

    test('should delete a product', () async {
      setUpMockFindAvailableProducts();
      await controller.findAvailableProducts();

      final productToDelete = mockedProducts[2];
      setUpMockDeleteProduct(productToDelete);
      await controller.deleteProduct(productToDelete);

      // assert
      assertNotNull(controller.products);
      expect(controller.products, equals(mockedProducts));
    });
  });
}

void _initMocks(
  MockProductService mockProductService,
) {
  Get.put<ProductService>(mockProductService);
}
