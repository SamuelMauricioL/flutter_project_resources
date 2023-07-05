// ignore_for_file: overridden_fields, annotate_overrides

import 'package:equatable/equatable.dart';
import 'package:flutter_project_resources/models/base/shop_base.dart';
import 'package:isar/isar.dart';

part "transaction_model.g.dart";

@Collection()
class TransactionModel extends ShopBase with EquatableMixin {
  @Id()
  int? isarId;
  @Index(unique: true)
  String? id;
  double? amount;
  double? fee;
  String? comment;
  String? productId;
  int? quantity;

  TransactionModel({
    super.created,
    super.modified,
    super.deleted = false,
    super.updated,
    super.companyId,
    super.shopId,
    this.isarId,
    this.id,
    this.amount,
    this.fee,
    this.comment,
    this.productId,
    this.quantity,
  });

  factory TransactionModel.fromMap(Map<String, dynamic> map) { 
    return TransactionModel(
      id: map['id'] as String?,
      amount: double.parse(map["amount"]),
      fee: double.parse(map["fee"]),
      comment: map["comment"] as String?,
      productId: map["product_id"] as String?,
      quantity: int.parse(map["quantity"]),
    );
  }

  static TransactionModel fromJsonModel(Map<String, dynamic> json) => 
      TransactionModel.fromMap(json);

    Map<String, dynamic> toMap() {
    return {
      'id': id,
      'amount': amount.toString(),
      'fee': fee.toString(),
      'comment': comment,
      'product_id': productId,
      'quantity': quantity.toString(),
    };
  }

  @override
  List<Object?> get props => 
      [isarId, id, amount, fee, comment, productId, quantity];
}
