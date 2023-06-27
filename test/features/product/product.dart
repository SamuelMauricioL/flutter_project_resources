import 'package:flutter_project_resources/api/product_api.dart';
import 'package:flutter_project_resources/manager/product_manager.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  ProductApi,
  ProductManager,
], customMocks: [
  MockSpec<ProductApi>(as: #MockAssetRemoteDatasource),
  MockSpec<ProductManager>(as: #MockAssetApiHandler)
])
void product() {}
