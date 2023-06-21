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

  Future<List<ProductModel>> findAvailableProducts() async {
    return col.filter().deletedEqualTo(false).findAll();
  }

  Future<List<ProductModel>> findByProductSku(String sku) async {
    return col.filter().skuEqualTo(sku).findAll();
  }
  
  Future<void> updateProduct(ProductModel product) async {
    await DataBase().isar.writeTxn((isar) => col.put(product));
  }

  Future<void> deleteProductBySku(String? sku) async {
    var product = col.filter().skuEqualTo(sku).findFirstSync();
    product!.deleted = true;
    await DataBase().isar.writeTxn((isar) => col.put(product));
  }

  Future<void> deleteProduct(ProductModel product) async {
    final id = product.isarId!;
    await DataBase().isar.writeTxn((isar) => col.delete(id));
  }
}
