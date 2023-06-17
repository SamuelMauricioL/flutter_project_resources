import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/db/data_base.dart';
import 'package:flutter_project_resources/db/shop_base_repository.dart';
import 'package:isar/isar.dart';

class ProductRepository extends ShopBaseRepository<ProductModel> {
  ProductRepository() {
    col = DataBase().isar.productModels;
  }

  Future<List<ProductModel>> findByProductIds(List<String> productIds) async {
    return productIds.isNotEmpty ? await findByIds(productIds) : [];
  }

  Future<ProductModel?> findByProductSku(String sku) async {
    return query().skuEqualTo(sku).findFirst();
  }
}
