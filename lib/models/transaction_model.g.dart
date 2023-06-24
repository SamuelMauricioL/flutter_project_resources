// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetTransactionModelCollection on Isar {
  IsarCollection<TransactionModel> get transactionModels => getCollection();
}

const TransactionModelSchema = CollectionSchema(
  name: 'TransactionModel',
  schema:
      '{"name":"TransactionModel","idName":"isarId","properties":[{"name":"amount","type":"Double"},{"name":"comment","type":"String"},{"name":"companyId","type":"String"},{"name":"created","type":"Long"},{"name":"deleted","type":"Bool"},{"name":"dirty","type":"Bool"},{"name":"fee","type":"Double"},{"name":"hashCode","type":"Long"},{"name":"id","type":"String"},{"name":"modified","type":"Long"},{"name":"productId","type":"String"},{"name":"quantity","type":"Long"},{"name":"shopId","type":"String"},{"name":"stringify","type":"Bool"},{"name":"updated","type":"Bool"}],"indexes":[{"name":"id","unique":true,"properties":[{"name":"id","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'isarId',
  propertyIds: {
    'amount': 0,
    'comment': 1,
    'companyId': 2,
    'created': 3,
    'deleted': 4,
    'dirty': 5,
    'fee': 6,
    'hashCode': 7,
    'id': 8,
    'modified': 9,
    'productId': 10,
    'quantity': 11,
    'shopId': 12,
    'stringify': 13,
    'updated': 14
  },
  listProperties: {},
  indexIds: {'id': 0},
  indexValueTypes: {
    'id': [
      IndexValueType.stringHash,
    ]
  },
  linkIds: {},
  backlinkLinkNames: {},
  getId: _transactionModelGetId,
  setId: _transactionModelSetId,
  getLinks: _transactionModelGetLinks,
  attachLinks: _transactionModelAttachLinks,
  serializeNative: _transactionModelSerializeNative,
  deserializeNative: _transactionModelDeserializeNative,
  deserializePropNative: _transactionModelDeserializePropNative,
  serializeWeb: _transactionModelSerializeWeb,
  deserializeWeb: _transactionModelDeserializeWeb,
  deserializePropWeb: _transactionModelDeserializePropWeb,
  version: 3,
);

int? _transactionModelGetId(TransactionModel object) {
  if (object.isarId == Isar.autoIncrement) {
    return null;
  } else {
    return object.isarId;
  }
}

void _transactionModelSetId(TransactionModel object, int id) {
  object.isarId = id;
}

List<IsarLinkBase> _transactionModelGetLinks(TransactionModel object) {
  return [];
}

void _transactionModelSerializeNative(
    IsarCollection<TransactionModel> collection,
    IsarRawObject rawObj,
    TransactionModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.amount;
  final _amount = value0;
  final value1 = object.comment;
  IsarUint8List? _comment;
  if (value1 != null) {
    _comment = IsarBinaryWriter.utf8Encoder.convert(value1);
  }
  dynamicSize += (_comment?.length ?? 0) as int;
  final value2 = object.companyId;
  IsarUint8List? _companyId;
  if (value2 != null) {
    _companyId = IsarBinaryWriter.utf8Encoder.convert(value2);
  }
  dynamicSize += (_companyId?.length ?? 0) as int;
  final value3 = object.created;
  final _created = value3;
  final value4 = object.deleted;
  final _deleted = value4;
  final value5 = object.dirty;
  final _dirty = value5;
  final value6 = object.fee;
  final _fee = value6;
  final value7 = object.hashCode;
  final _hashCode = value7;
  final value8 = object.id;
  IsarUint8List? _id;
  if (value8 != null) {
    _id = IsarBinaryWriter.utf8Encoder.convert(value8);
  }
  dynamicSize += (_id?.length ?? 0) as int;
  final value9 = object.modified;
  final _modified = value9;
  final value10 = object.productId;
  IsarUint8List? _productId;
  if (value10 != null) {
    _productId = IsarBinaryWriter.utf8Encoder.convert(value10);
  }
  dynamicSize += (_productId?.length ?? 0) as int;
  final value11 = object.quantity;
  final _quantity = value11;
  final value12 = object.shopId;
  IsarUint8List? _shopId;
  if (value12 != null) {
    _shopId = IsarBinaryWriter.utf8Encoder.convert(value12);
  }
  dynamicSize += (_shopId?.length ?? 0) as int;
  final value13 = object.stringify;
  final _stringify = value13;
  final value14 = object.updated;
  final _updated = value14;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _amount);
  writer.writeBytes(offsets[1], _comment);
  writer.writeBytes(offsets[2], _companyId);
  writer.writeLong(offsets[3], _created);
  writer.writeBool(offsets[4], _deleted);
  writer.writeBool(offsets[5], _dirty);
  writer.writeDouble(offsets[6], _fee);
  writer.writeLong(offsets[7], _hashCode);
  writer.writeBytes(offsets[8], _id);
  writer.writeLong(offsets[9], _modified);
  writer.writeBytes(offsets[10], _productId);
  writer.writeLong(offsets[11], _quantity);
  writer.writeBytes(offsets[12], _shopId);
  writer.writeBool(offsets[13], _stringify);
  writer.writeBool(offsets[14], _updated);
}

TransactionModel _transactionModelDeserializeNative(
    IsarCollection<TransactionModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = TransactionModel(
    amount: reader.readDoubleOrNull(offsets[0]),
    comment: reader.readStringOrNull(offsets[1]),
    companyId: reader.readStringOrNull(offsets[2]),
    created: reader.readLongOrNull(offsets[3]),
    deleted: reader.readBoolOrNull(offsets[4]),
    fee: reader.readDoubleOrNull(offsets[6]),
    id: reader.readStringOrNull(offsets[8]),
    isarId: id,
    modified: reader.readLongOrNull(offsets[9]),
    productId: reader.readStringOrNull(offsets[10]),
    quantity: reader.readLongOrNull(offsets[11]),
    shopId: reader.readStringOrNull(offsets[12]),
    updated: reader.readBoolOrNull(offsets[14]),
  );
  object.dirty = reader.readBoolOrNull(offsets[5]);
  return object;
}

P _transactionModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readBoolOrNull(offset)) as P;
    case 14:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _transactionModelSerializeWeb(
    IsarCollection<TransactionModel> collection, TransactionModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'amount', object.amount);
  IsarNative.jsObjectSet(jsObj, 'comment', object.comment);
  IsarNative.jsObjectSet(jsObj, 'companyId', object.companyId);
  IsarNative.jsObjectSet(jsObj, 'created', object.created);
  IsarNative.jsObjectSet(jsObj, 'deleted', object.deleted);
  IsarNative.jsObjectSet(jsObj, 'dirty', object.dirty);
  IsarNative.jsObjectSet(jsObj, 'fee', object.fee);
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isarId', object.isarId);
  IsarNative.jsObjectSet(jsObj, 'modified', object.modified);
  IsarNative.jsObjectSet(jsObj, 'productId', object.productId);
  IsarNative.jsObjectSet(jsObj, 'quantity', object.quantity);
  IsarNative.jsObjectSet(jsObj, 'shopId', object.shopId);
  IsarNative.jsObjectSet(jsObj, 'stringify', object.stringify);
  IsarNative.jsObjectSet(jsObj, 'updated', object.updated);
  return jsObj;
}

TransactionModel _transactionModelDeserializeWeb(
    IsarCollection<TransactionModel> collection, dynamic jsObj) {
  final object = TransactionModel(
    amount: IsarNative.jsObjectGet(jsObj, 'amount'),
    comment: IsarNative.jsObjectGet(jsObj, 'comment'),
    companyId: IsarNative.jsObjectGet(jsObj, 'companyId'),
    created: IsarNative.jsObjectGet(jsObj, 'created'),
    deleted: IsarNative.jsObjectGet(jsObj, 'deleted'),
    fee: IsarNative.jsObjectGet(jsObj, 'fee'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    isarId: IsarNative.jsObjectGet(jsObj, 'isarId'),
    modified: IsarNative.jsObjectGet(jsObj, 'modified'),
    productId: IsarNative.jsObjectGet(jsObj, 'productId'),
    quantity: IsarNative.jsObjectGet(jsObj, 'quantity'),
    shopId: IsarNative.jsObjectGet(jsObj, 'shopId'),
    updated: IsarNative.jsObjectGet(jsObj, 'updated'),
  );
  object.dirty = IsarNative.jsObjectGet(jsObj, 'dirty');
  return object;
}

P _transactionModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'amount':
      return (IsarNative.jsObjectGet(jsObj, 'amount')) as P;
    case 'comment':
      return (IsarNative.jsObjectGet(jsObj, 'comment')) as P;
    case 'companyId':
      return (IsarNative.jsObjectGet(jsObj, 'companyId')) as P;
    case 'created':
      return (IsarNative.jsObjectGet(jsObj, 'created')) as P;
    case 'deleted':
      return (IsarNative.jsObjectGet(jsObj, 'deleted')) as P;
    case 'dirty':
      return (IsarNative.jsObjectGet(jsObj, 'dirty')) as P;
    case 'fee':
      return (IsarNative.jsObjectGet(jsObj, 'fee')) as P;
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'isarId':
      return (IsarNative.jsObjectGet(jsObj, 'isarId')) as P;
    case 'modified':
      return (IsarNative.jsObjectGet(jsObj, 'modified')) as P;
    case 'productId':
      return (IsarNative.jsObjectGet(jsObj, 'productId')) as P;
    case 'quantity':
      return (IsarNative.jsObjectGet(jsObj, 'quantity')) as P;
    case 'shopId':
      return (IsarNative.jsObjectGet(jsObj, 'shopId')) as P;
    case 'stringify':
      return (IsarNative.jsObjectGet(jsObj, 'stringify')) as P;
    case 'updated':
      return (IsarNative.jsObjectGet(jsObj, 'updated')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _transactionModelAttachLinks(
    IsarCollection col, int id, TransactionModel object) {}

extension TransactionModelByIndex on IsarCollection<TransactionModel> {
  Future<TransactionModel?> getById(String? id) {
    return getByIndex('id', [id]);
  }

  TransactionModel? getByIdSync(String? id) {
    return getByIndexSync('id', [id]);
  }

  Future<bool> deleteById(String? id) {
    return deleteByIndex('id', [id]);
  }

  bool deleteByIdSync(String? id) {
    return deleteByIndexSync('id', [id]);
  }

  Future<List<TransactionModel?>> getAllById(List<String?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex('id', values);
  }

  List<TransactionModel?> getAllByIdSync(List<String?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync('id', values);
  }

  Future<int> deleteAllById(List<String?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex('id', values);
  }

  int deleteAllByIdSync(List<String?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('id', values);
  }
}

extension TransactionModelQueryWhereSort
    on QueryBuilder<TransactionModel, TransactionModel, QWhere> {
  QueryBuilder<TransactionModel, TransactionModel, QAfterWhere> anyIsarId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IndexWhereClause.any(indexName: 'id'));
  }
}

extension TransactionModelQueryWhere
    on QueryBuilder<TransactionModel, TransactionModel, QWhereClause> {
  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      isarIdEqualTo(int isarId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: isarId,
      includeLower: true,
      upper: isarId,
      includeUpper: true,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      isarIdNotEqualTo(int isarId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: isarId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: isarId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: isarId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: isarId, includeUpper: false),
      );
    }
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      isarIdGreaterThan(int isarId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: isarId, includeLower: include),
    );
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      isarIdLessThan(int isarId, {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: isarId, includeUpper: include),
    );
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      isarIdBetween(
    int lowerIsarId,
    int upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerIsarId,
      includeLower: includeLower,
      upper: upperIsarId,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause> idEqualTo(
      String? id) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'id',
      value: [id],
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      idNotEqualTo(String? id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'id',
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'id',
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(IndexWhereClause.greaterThan(
        indexName: 'id',
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(IndexWhereClause.lessThan(
        indexName: 'id',
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      idIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'id',
      value: [null],
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterWhereClause>
      idIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'id',
      lower: [null],
      includeLower: false,
    ));
  }
}

extension TransactionModelQueryFilter
    on QueryBuilder<TransactionModel, TransactionModel, QFilterCondition> {
  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      amountIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'amount',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      amountGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      amountLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'amount',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      amountBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'amount',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'comment',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'comment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'comment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'comment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'comment',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'comment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'comment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'comment',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      commentMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'comment',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'companyId',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'companyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'companyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'companyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'companyId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'companyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'companyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'companyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      companyIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'companyId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      createdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'created',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      createdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      createdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      createdLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      createdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'created',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      deletedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'deleted',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      deletedEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deleted',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      dirtyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'dirty',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      dirtyEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dirty',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      feeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'fee',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      feeGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'fee',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      feeLessThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'fee',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      feeBetween(double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'fee',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'hashCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      isarIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'isarId',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      isarIdEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      isarIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      isarIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      isarIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isarId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      modifiedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'modified',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      modifiedEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'modified',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      modifiedGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'modified',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      modifiedLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'modified',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      modifiedBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'modified',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'productId',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'productId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'productId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      productIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'productId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      quantityIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'quantity',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      quantityEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'quantity',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      quantityGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'quantity',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      quantityLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'quantity',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      quantityBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'quantity',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'shopId',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'shopId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'shopId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'shopId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'shopId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'shopId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'shopId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'shopId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      shopIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'shopId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      stringifyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stringify',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      updatedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updated',
      value: null,
    ));
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterFilterCondition>
      updatedEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updated',
      value: value,
    ));
  }
}

extension TransactionModelQueryLinks
    on QueryBuilder<TransactionModel, TransactionModel, QFilterCondition> {}

extension TransactionModelQueryWhereSortBy
    on QueryBuilder<TransactionModel, TransactionModel, QSortBy> {
  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByComment() {
    return addSortByInternal('comment', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByCommentDesc() {
    return addSortByInternal('comment', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByCompanyId() {
    return addSortByInternal('companyId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByCompanyIdDesc() {
    return addSortByInternal('companyId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy> sortByDirty() {
    return addSortByInternal('dirty', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByDirtyDesc() {
    return addSortByInternal('dirty', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy> sortByFee() {
    return addSortByInternal('fee', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByFeeDesc() {
    return addSortByInternal('fee', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByModified() {
    return addSortByInternal('modified', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByModifiedDesc() {
    return addSortByInternal('modified', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByQuantity() {
    return addSortByInternal('quantity', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByQuantityDesc() {
    return addSortByInternal('quantity', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByShopId() {
    return addSortByInternal('shopId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByShopIdDesc() {
    return addSortByInternal('shopId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByUpdated() {
    return addSortByInternal('updated', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      sortByUpdatedDesc() {
    return addSortByInternal('updated', Sort.desc);
  }
}

extension TransactionModelQueryWhereSortThenBy
    on QueryBuilder<TransactionModel, TransactionModel, QSortThenBy> {
  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByAmount() {
    return addSortByInternal('amount', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByAmountDesc() {
    return addSortByInternal('amount', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByComment() {
    return addSortByInternal('comment', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByCommentDesc() {
    return addSortByInternal('comment', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByCompanyId() {
    return addSortByInternal('companyId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByCompanyIdDesc() {
    return addSortByInternal('companyId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy> thenByDirty() {
    return addSortByInternal('dirty', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByDirtyDesc() {
    return addSortByInternal('dirty', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy> thenByFee() {
    return addSortByInternal('fee', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByFeeDesc() {
    return addSortByInternal('fee', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByModified() {
    return addSortByInternal('modified', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByModifiedDesc() {
    return addSortByInternal('modified', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByProductId() {
    return addSortByInternal('productId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByProductIdDesc() {
    return addSortByInternal('productId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByQuantity() {
    return addSortByInternal('quantity', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByQuantityDesc() {
    return addSortByInternal('quantity', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByShopId() {
    return addSortByInternal('shopId', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByShopIdDesc() {
    return addSortByInternal('shopId', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByUpdated() {
    return addSortByInternal('updated', Sort.asc);
  }

  QueryBuilder<TransactionModel, TransactionModel, QAfterSortBy>
      thenByUpdatedDesc() {
    return addSortByInternal('updated', Sort.desc);
  }
}

extension TransactionModelQueryWhereDistinct
    on QueryBuilder<TransactionModel, TransactionModel, QDistinct> {
  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByAmount() {
    return addDistinctByInternal('amount');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct> distinctByComment(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('comment', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByCompanyId({bool caseSensitive = true}) {
    return addDistinctByInternal('companyId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByCreated() {
    return addDistinctByInternal('created');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByDeleted() {
    return addDistinctByInternal('deleted');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByDirty() {
    return addDistinctByInternal('dirty');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct> distinctByFee() {
    return addDistinctByInternal('fee');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByIsarId() {
    return addDistinctByInternal('isarId');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByModified() {
    return addDistinctByInternal('modified');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByProductId({bool caseSensitive = true}) {
    return addDistinctByInternal('productId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByQuantity() {
    return addDistinctByInternal('quantity');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct> distinctByShopId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('shopId', caseSensitive: caseSensitive);
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<TransactionModel, TransactionModel, QDistinct>
      distinctByUpdated() {
    return addDistinctByInternal('updated');
  }
}

extension TransactionModelQueryProperty
    on QueryBuilder<TransactionModel, TransactionModel, QQueryProperty> {
  QueryBuilder<TransactionModel, double?, QQueryOperations> amountProperty() {
    return addPropertyNameInternal('amount');
  }

  QueryBuilder<TransactionModel, String?, QQueryOperations> commentProperty() {
    return addPropertyNameInternal('comment');
  }

  QueryBuilder<TransactionModel, String?, QQueryOperations>
      companyIdProperty() {
    return addPropertyNameInternal('companyId');
  }

  QueryBuilder<TransactionModel, int?, QQueryOperations> createdProperty() {
    return addPropertyNameInternal('created');
  }

  QueryBuilder<TransactionModel, bool?, QQueryOperations> deletedProperty() {
    return addPropertyNameInternal('deleted');
  }

  QueryBuilder<TransactionModel, bool?, QQueryOperations> dirtyProperty() {
    return addPropertyNameInternal('dirty');
  }

  QueryBuilder<TransactionModel, double?, QQueryOperations> feeProperty() {
    return addPropertyNameInternal('fee');
  }

  QueryBuilder<TransactionModel, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<TransactionModel, String?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<TransactionModel, int?, QQueryOperations> isarIdProperty() {
    return addPropertyNameInternal('isarId');
  }

  QueryBuilder<TransactionModel, int?, QQueryOperations> modifiedProperty() {
    return addPropertyNameInternal('modified');
  }

  QueryBuilder<TransactionModel, String?, QQueryOperations>
      productIdProperty() {
    return addPropertyNameInternal('productId');
  }

  QueryBuilder<TransactionModel, int?, QQueryOperations> quantityProperty() {
    return addPropertyNameInternal('quantity');
  }

  QueryBuilder<TransactionModel, String?, QQueryOperations> shopIdProperty() {
    return addPropertyNameInternal('shopId');
  }

  QueryBuilder<TransactionModel, bool?, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }

  QueryBuilder<TransactionModel, bool?, QQueryOperations> updatedProperty() {
    return addPropertyNameInternal('updated');
  }
}
