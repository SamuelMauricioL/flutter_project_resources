// ignore_for_file: INVALID_USE_OF_PROTECTED_MEMBER

import 'package:flutter_project_resources/db/shared_preferences/shared_preferences.dart';
import 'package:flutter_project_resources/models/base/entity_base.dart';
import 'package:isar/isar.dart';

abstract class Repository<T extends EntityBase> {
  late final IsarCollection<T> col;
  final sharedPreferences = SharedPreferences();

  FilterCondition getCompanyIdFilter() {
    return FilterCondition(
      type: ConditionType.eq,
      property: 'companyId',
      value: sharedPreferences.companyId,
      caseSensitive: true,
    );
  }

  FilterCondition getShopIdFilter() {
    return FilterCondition(
      type: ConditionType.eq,
      property: 'shopId',
      value: sharedPreferences.shopId,
      caseSensitive: true,
    );
  }

  FilterCondition getTerminalIdFilter() {
    return FilterCondition(
      type: ConditionType.eq,
      property: 'terminalId',
      value: sharedPreferences.terminalId,
      caseSensitive: true,
    );
  }

  FilterCondition getIdFilter(String id) {
    return FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: id,
      caseSensitive: true,
    );
  }

  FilterCondition getPropertyFilter<E>(E value, String property,
      {caseSensitive = true}) {
    return FilterCondition(
      type: ConditionType.eq,
      property: property,
      value: value,
      caseSensitive: caseSensitive,
    );
  }

  Future<void> save(T entity) async {
    await col.isar.writeTxn((_) async {
      await col.put(entity);
    });
  }

  Future<void> saveMany(List<T> entities) async {
    await col.isar.writeTxn((_) async {
      final currentEntitiesAsMap = await getCurrentEntitiesAsMap(entities);
      for (var e in entities) {
        if (currentEntitiesAsMap[e.id] == null) continue;
        e.isarId = currentEntitiesAsMap[e.id]!.isarId;
      }

      await col.putAll(entities);
    });
  }

  Future<Map<String, T>> getCurrentEntitiesAsMap(List<T> entities) async {
    final currentEntityIds = entities.map((e) => e.id!).toList();
    final currentEntities = await findByIds(currentEntityIds);
    return {for (var e in currentEntities) e.id!: e};
  }

  Future<List<T>> findAll() async {
    final list = await col.buildQuery().findAll();
    return list.isEmpty ? List.empty() : list.whereType<T>().toList();
  }

  Future<T?> findById(String id) {
    return col
        .filter()
        .addFilterConditionInternal(getIdFilter(id))
        .buildInternal()
        .findFirst();
  }

  Future<List<T>> findByIds(List<String> ids) async {
    return col
        .filter()
        .group((q) {
          var q2 =
              QueryBuilder<T, T, QAfterFilterCondition>(col, false, Sort.desc);
          for (String id in ids) {
            q2 = q2
                .andOrInternal(FilterGroupType.or)
                .addFilterConditionInternal(getIdFilter(id));
          }
          return q2;
        })
        .buildInternal()
        .findAll();
  }

  Future<void> removeByIds(List<String> ids) async {
    final entities = await findByIds(ids);
    final entityIsarIds = entities.map((it) => it.isarId!);
    col.deleteAll(entityIsarIds.toList());
  }

  Future<void> removeManyFromOtherCollection<E extends EntityBase, V>(
      IsarCollection<E> collection, List<V> values,
      {String property = 'id'}) async {
    final entities = await collection
        .filter()
        .group((q) {
          var q2 = QueryBuilder<E, E, QAfterFilterCondition>(
              collection, false, Sort.desc);
          for (V value in values) {
            q2 = q2
                .andOrInternal(FilterGroupType.or)
                .addFilterConditionInternal(
                    getPropertyFilter<V>(value, property));
          }
          return q2;
        })
        .buildInternal()
        .findAll();
    if (entities.isEmpty) return;
    final entityIsarIds = entities.map((it) => it.isarId!);
    collection.deleteAll(entityIsarIds.toList());
  }

  Future<List<T>> findByIsarIds(List<int> isarIds) async {
    final list = await col.getAll(isarIds);
    return list.isEmpty ? List.empty() : list.whereType<T>().toList();
  }

  Future<T?> findByIsarId(int isarId) async {
    final res = col.get(isarId);
    return res;
  }

  Future<List<T>> findByProperty<E>(E value, String property,
      {caseSensitive = true}) async {
    return col
        .filter()
        .addFilterConditionInternal(
            getPropertyFilter(value, property, caseSensitive: caseSensitive))
        .buildInternal()
        .findAll();
  }

  Future<List<T>> findByPropertyList<E>(List<E> values, String property) {
    return col
        .filter()
        .group((q) {
          return queryPropertyList(values, property);
        })
        .buildInternal()
        .findAll();
  }

  Future<int> findLastSaved() async {
    final res = await col
        .filter()
        .addSortByInternal('modified', Sort.desc)
        .buildInternal()
        .findFirst();
    return res?.modified ?? 0;
  }

  QueryBuilder<T, T, QAfterFilterCondition> queryPropertyList<E>(
      List<E> values, String property) {
    var q2 = QueryBuilder<T, T, QAfterFilterCondition>(col, false, Sort.desc);
    for (E value in values) {
      q2 = q2
          .andOrInternal(FilterGroupType.or)
          .addFilterConditionInternal(getPropertyFilter(value, property));
    }
    return q2;
  }
}
