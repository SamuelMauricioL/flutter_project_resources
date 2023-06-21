import 'package:flutter_project_resources/http/http.dart';
import 'package:flutter_project_resources/http/http_method.dart';
import 'package:flutter_project_resources/http/http_result.dart';
import 'package:get/get.dart';

class ProductApi {
  final Http _http = Get.find<Http>();

  Future<HttpResult> getProducts() async {
    final result = _http.request(
      'products/products',
      method: HttpMethod.get,
    );
    return result;
  }

  // List<ProductModel> getProducts() {
  //   return [
  //     ProductModel(
  //       id: '1',
  //       name: 'Product 1',
  //       description: 'Description 1',
  //       image: 'https://picsum.photos/200/300',
  //       price: 10.0,
  //       quantity: 1,
  //       sku: 'sku1',
  //     ),
  //     ProductModel(
  //       id: '2',
  //       name: 'Product 2',
  //       description: 'Description 2',
  //       image: 'https://picsum.photos/200/300',
  //       price: 20.0,
  //       quantity: 2,
  //       sku: 'sku2',
  //     ),
  //     ProductModel(
  //       id: '3',
  //       name: 'Product 3',
  //       description: 'Description 3',
  //       image: 'https://picsum.photos/200/300',
  //       price: 30.0,
  //       quantity: 3,
  //       sku: 'sku3',
  //     ),
  //     ProductModel(
  //       id: '4',
  //       name: 'Product 4',
  //       description: 'Description 4',
  //       image: 'https://picsum.photos/200/300',
  //       price: 40.0,
  //       quantity: 4,
  //       sku: 'sku4',
  //     ),
  //     ProductModel(
  //       id: '5',
  //       name: 'Product 5',
  //       description: 'Description 5',
  //       image: 'https://picsum.photos/200/300',
  //       price: 50.0,
  //       quantity: 5,
  //       sku: 'sku5',
  //     ),
  //     ProductModel(
  //       id: '6',
  //       name: 'Product 6',
  //       description: 'Description 6',
  //       image: 'https://picsum.photos/200/300',
  //       price: 60.0,
  //       quantity: 6,
  //       sku: 'sku6',
  //     ),
  //     ProductModel(
  //       id: '7',
  //       name: 'Product 7',
  //       description: 'Description 7',
  //       image: 'https://picsum.photos/200/300',
  //       price: 70.0,
  //       quantity: 7,
  //       sku: 'sku7',
  //     ),
  //     ProductModel(
  //       id: '8',
  //       name: 'Product 8',
  //       description: 'Description 8',
  //       image: 'https://picsum.photos/200/300',
  //       price: 80.0,
  //       quantity: 8,
  //       sku: 'sku8',
  //     ),
  //     ProductModel(
  //       id: '9',
  //       name: 'Product 9',
  //       description: 'Description 9',
  //       image: 'https://picsum.photos/200/300',
  //       price: 90.0,
  //       quantity: 9,
  //       sku: 'sku9',
  //     ),
  //     ProductModel(
  //       id: '10',
  //       name: 'Product 10',
  //       description: 'Description 10',
  //       image: 'https://picsum.photos/200/300',
  //       price: 100.0,
  //       quantity: 10,
  //       sku: 'sku10',
  //     ),
  //   ];
  // }
}
