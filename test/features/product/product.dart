import 'package:flutter_project_resources/api/product_api.dart';
import 'package:flutter_project_resources/manager/product_manager.dart';
import 'package:flutter_project_resources/services/product_service.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  ProductApi,
  ProductManager,
  ProductService,
], customMocks: [
  MockSpec<ProductApi>(as: #MockAssetRemoteDatasource),
  MockSpec<ProductManager>(as: #MockAssetApiHandler),
  MockSpec<ProductService>(as: #MockProductServiceStorage),
])
void product() {}
