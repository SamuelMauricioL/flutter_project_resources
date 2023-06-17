// ignore_for_file: INVALID_USE_OF_PROTECTED_MEMBER

import 'package:flutter_project_resources/db/repository.dart';
import 'package:flutter_project_resources/models/base/shop_base.dart';
import 'package:isar/isar.dart';

abstract class ShopBaseRepository<T extends ShopBase> extends Repository<T> {
  QueryBuilder<T, T, QAfterFilterCondition> query() {
    return col
        .filter()
        .addFilterConditionInternal(getCompanyIdFilter())
        .andOrInternal(FilterGroupType.and)
        .addFilterConditionInternal(getShopIdFilter());
  }

  Future<List<T>> findAllByShopAndCompany() {
    return query().findAll();
  }
}
