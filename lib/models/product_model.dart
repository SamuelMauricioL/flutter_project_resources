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
    super.deleted = false,
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

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      id: map['id'] as String?,
      name: map['name'] as String?,
      description: map['description'] as String?,
      image: map['image'] as String?,
      price: double.parse(map['price'] as String),
      quantity: int.parse(map['quantity']),
      sku: map['sku'] as String?,
    );
  }

  static ProductModel fromJsonModel(Map<String, dynamic> json) =>
      ProductModel.fromMap(json);

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'price': price.toString(),
      'quantity': quantity.toString(),
      'sku': sku,
    };
  }

  @override
  List<Object?> get props =>
      [isarId, id, name, description, image, price, quantity, sku];
}
