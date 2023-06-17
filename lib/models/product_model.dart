// ignore_for_file: overridden_fields, annotate_overrides

import 'package:equatable/equatable.dart';
import 'package:flutter_project_resources/models/base/shop_base.dart';
import 'package:isar/isar.dart';

part 'product_model.g.dart';

@Collection()
class ProductModel extends ShopBase with EquatableMixin {
  @Id()
  int? isarId;
  @Index(unique: true)
  String? id;
  String? name;
  String? description;
  String? image;
  double? price;
  int? quantity;
  String? sku;

  ProductModel({
    super.created,
    super.modified,
    super.deleted,
    super.updated,
    super.companyId,
    super.shopId,
    this.isarId,
    this.id,
    this.name,
    this.description,
    this.image,
    this.price,
    this.quantity,
    this.sku,
  });

  @override
  List<Object?> get props =>
      [isarId, id, name, description, image, price, quantity, sku];
}
