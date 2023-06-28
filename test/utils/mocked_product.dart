import 'package:flutter_project_resources/models/product_model.dart';

List<ProductModel> getMockedProducts() {
  return [
    ProductModel(
      id: '1',
      name: 'Product 1',
      sku: '1',
      price: 1.0,
      description: 'Product 1 description',
      image: 'product_1.png',
      quantity: 1,
    ),
    ProductModel(
      id: '2',
      name: 'Product 2',
      sku: '2',
      price: 2.0,
      description: 'Product 2 description',
      image: 'product_2.png',
      quantity: 2,
    ),
    ProductModel(
      id: '3',
      name: 'Product 3',
      sku: '3',
      price: 3.0,
      description: 'Product 3 description',
      image: 'product_3.png',
      quantity: 3,
    ),
    ProductModel(
      id: '4',
      name: 'Product 4',
      sku: '4',
      price: 4.0,
      description: 'Product 4 description',
      image: 'product_4.png',
      quantity: 4,
    ),
    ProductModel(
      id: '5',
      name: 'Product 5',
      sku: '5',
      price: 5.0,
      description: 'Product 5 description',
      image: 'product_5.png',
      quantity: 5,
    ),
  ];
}
