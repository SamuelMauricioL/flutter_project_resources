// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetProductModelCollection on Isar {
  IsarCollection<ProductModel> get productModels => getCollection();
}

const ProductModelSchema = CollectionSchema(
  name: 'ProductModel',
  schema:
      '{"name":"ProductModel","idName":"isarId","properties":[{"name":"companyId","type":"String"},{"name":"created","type":"Long"},{"name":"deleted","type":"Bool"},{"name":"description","type":"String"},{"name":"dirty","type":"Bool"},{"name":"hashCode","type":"Long"},{"name":"id","type":"String"},{"name":"image","type":"String"},{"name":"modified","type":"Long"},{"name":"name","type":"String"},{"name":"price","type":"Double"},{"name":"quantity","type":"Long"},{"name":"shopId","type":"String"},{"name":"sku","type":"String"},{"name":"stringify","type":"Bool"},{"name":"updated","type":"Bool"}],"indexes":[{"name":"id","unique":true,"properties":[{"name":"id","type":"Hash","caseSensitive":true}]}],"links":[]}',
  idName: 'isarId',
  propertyIds: {
    'companyId': 0,
    'created': 1,
    'deleted': 2,
    'description': 3,
    'dirty': 4,
    'hashCode': 5,
    'id': 6,
    'image': 7,
    'modified': 8,
    'name': 9,
    'price': 10,
    'quantity': 11,
    'shopId': 12,
    'sku': 13,
    'stringify': 14,
    'updated': 15
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
  getId: _productModelGetId,
  setId: _productModelSetId,
  getLinks: _productModelGetLinks,
  attachLinks: _productModelAttachLinks,
  serializeNative: _productModelSerializeNative,
  deserializeNative: _productModelDeserializeNative,
  deserializePropNative: _productModelDeserializePropNative,
  serializeWeb: _productModelSerializeWeb,
  deserializeWeb: _productModelDeserializeWeb,
  deserializePropWeb: _productModelDeserializePropWeb,
  version: 3,
);

int? _productModelGetId(ProductModel object) {
  if (object.isarId == Isar.autoIncrement) {
    return null;
  } else {
    return object.isarId;
  }
}

void _productModelSetId(ProductModel object, int id) {
  object.isarId = id;
}

List<IsarLinkBase> _productModelGetLinks(ProductModel object) {
  return [];
}

void _productModelSerializeNative(
    IsarCollection<ProductModel> collection,
    IsarRawObject rawObj,
    ProductModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.companyId;
  IsarUint8List? _companyId;
  if (value0 != null) {
    _companyId = IsarBinaryWriter.utf8Encoder.convert(value0);
  }
  dynamicSize += (_companyId?.length ?? 0) as int;
  final value1 = object.created;
  final _created = value1;
  final value2 = object.deleted;
  final _deleted = value2;
  final value3 = object.description;
  IsarUint8List? _description;
  if (value3 != null) {
    _description = IsarBinaryWriter.utf8Encoder.convert(value3);
  }
  dynamicSize += (_description?.length ?? 0) as int;
  final value4 = object.dirty;
  final _dirty = value4;
  final value5 = object.hashCode;
  final _hashCode = value5;
  final value6 = object.id;
  IsarUint8List? _id;
  if (value6 != null) {
    _id = IsarBinaryWriter.utf8Encoder.convert(value6);
  }
  dynamicSize += (_id?.length ?? 0) as int;
  final value7 = object.image;
  IsarUint8List? _image;
  if (value7 != null) {
    _image = IsarBinaryWriter.utf8Encoder.convert(value7);
  }
  dynamicSize += (_image?.length ?? 0) as int;
  final value8 = object.modified;
  final _modified = value8;
  final value9 = object.name;
  IsarUint8List? _name;
  if (value9 != null) {
    _name = IsarBinaryWriter.utf8Encoder.convert(value9);
  }
  dynamicSize += (_name?.length ?? 0) as int;
  final value10 = object.price;
  final _price = value10;
  final value11 = object.quantity;
  final _quantity = value11;
  final value12 = object.shopId;
  IsarUint8List? _shopId;
  if (value12 != null) {
    _shopId = IsarBinaryWriter.utf8Encoder.convert(value12);
  }
  dynamicSize += (_shopId?.length ?? 0) as int;
  final value13 = object.sku;
  IsarUint8List? _sku;
  if (value13 != null) {
    _sku = IsarBinaryWriter.utf8Encoder.convert(value13);
  }
  dynamicSize += (_sku?.length ?? 0) as int;
  final value14 = object.stringify;
  final _stringify = value14;
  final value15 = object.updated;
  final _updated = value15;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _companyId);
  writer.writeLong(offsets[1], _created);
  writer.writeBool(offsets[2], _deleted);
  writer.writeBytes(offsets[3], _description);
  writer.writeBool(offsets[4], _dirty);
  writer.writeLong(offsets[5], _hashCode);
  writer.writeBytes(offsets[6], _id);
  writer.writeBytes(offsets[7], _image);
  writer.writeLong(offsets[8], _modified);
  writer.writeBytes(offsets[9], _name);
  writer.writeDouble(offsets[10], _price);
  writer.writeLong(offsets[11], _quantity);
  writer.writeBytes(offsets[12], _shopId);
  writer.writeBytes(offsets[13], _sku);
  writer.writeBool(offsets[14], _stringify);
  writer.writeBool(offsets[15], _updated);
}

ProductModel _productModelDeserializeNative(
    IsarCollection<ProductModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = ProductModel(
    companyId: reader.readStringOrNull(offsets[0]),
    created: reader.readLongOrNull(offsets[1]),
    deleted: reader.readBoolOrNull(offsets[2]),
    description: reader.readStringOrNull(offsets[3]),
    id: reader.readStringOrNull(offsets[6]),
    image: reader.readStringOrNull(offsets[7]),
    isarId: id,
    modified: reader.readLongOrNull(offsets[8]),
    name: reader.readStringOrNull(offsets[9]),
    price: reader.readDoubleOrNull(offsets[10]),
    quantity: reader.readLongOrNull(offsets[11]),
    shopId: reader.readStringOrNull(offsets[12]),
    sku: reader.readStringOrNull(offsets[13]),
    updated: reader.readBoolOrNull(offsets[15]),
  );
  object.dirty = reader.readBoolOrNull(offsets[4]);
  return object;
}

P _productModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDoubleOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readBoolOrNull(offset)) as P;
    case 15:
      return (reader.readBoolOrNull(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _productModelSerializeWeb(
    IsarCollection<ProductModel> collection, ProductModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'companyId', object.companyId);
  IsarNative.jsObjectSet(jsObj, 'created', object.created);
  IsarNative.jsObjectSet(jsObj, 'deleted', object.deleted);
  IsarNative.jsObjectSet(jsObj, 'description', object.description);
  IsarNative.jsObjectSet(jsObj, 'dirty', object.dirty);
  IsarNative.jsObjectSet(jsObj, 'hashCode', object.hashCode);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'image', object.image);
  IsarNative.jsObjectSet(jsObj, 'isarId', object.isarId);
  IsarNative.jsObjectSet(jsObj, 'modified', object.modified);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(jsObj, 'price', object.price);
  IsarNative.jsObjectSet(jsObj, 'quantity', object.quantity);
  IsarNative.jsObjectSet(jsObj, 'shopId', object.shopId);
  IsarNative.jsObjectSet(jsObj, 'sku', object.sku);
  IsarNative.jsObjectSet(jsObj, 'stringify', object.stringify);
  IsarNative.jsObjectSet(jsObj, 'updated', object.updated);
  return jsObj;
}

ProductModel _productModelDeserializeWeb(
    IsarCollection<ProductModel> collection, dynamic jsObj) {
  final object = ProductModel(
    companyId: IsarNative.jsObjectGet(jsObj, 'companyId'),
    created: IsarNative.jsObjectGet(jsObj, 'created'),
    deleted: IsarNative.jsObjectGet(jsObj, 'deleted'),
    description: IsarNative.jsObjectGet(jsObj, 'description'),
    id: IsarNative.jsObjectGet(jsObj, 'id'),
    image: IsarNative.jsObjectGet(jsObj, 'image'),
    isarId: IsarNative.jsObjectGet(jsObj, 'isarId'),
    modified: IsarNative.jsObjectGet(jsObj, 'modified'),
    name: IsarNative.jsObjectGet(jsObj, 'name'),
    price: IsarNative.jsObjectGet(jsObj, 'price'),
    quantity: IsarNative.jsObjectGet(jsObj, 'quantity'),
    shopId: IsarNative.jsObjectGet(jsObj, 'shopId'),
    sku: IsarNative.jsObjectGet(jsObj, 'sku'),
    updated: IsarNative.jsObjectGet(jsObj, 'updated'),
  );
  object.dirty = IsarNative.jsObjectGet(jsObj, 'dirty');
  return object;
}

P _productModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'companyId':
      return (IsarNative.jsObjectGet(jsObj, 'companyId')) as P;
    case 'created':
      return (IsarNative.jsObjectGet(jsObj, 'created')) as P;
    case 'deleted':
      return (IsarNative.jsObjectGet(jsObj, 'deleted')) as P;
    case 'description':
      return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
    case 'dirty':
      return (IsarNative.jsObjectGet(jsObj, 'dirty')) as P;
    case 'hashCode':
      return (IsarNative.jsObjectGet(jsObj, 'hashCode') ??
          double.negativeInfinity) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'image':
      return (IsarNative.jsObjectGet(jsObj, 'image')) as P;
    case 'isarId':
      return (IsarNative.jsObjectGet(jsObj, 'isarId')) as P;
    case 'modified':
      return (IsarNative.jsObjectGet(jsObj, 'modified')) as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name')) as P;
    case 'price':
      return (IsarNative.jsObjectGet(jsObj, 'price')) as P;
    case 'quantity':
      return (IsarNative.jsObjectGet(jsObj, 'quantity')) as P;
    case 'shopId':
      return (IsarNative.jsObjectGet(jsObj, 'shopId')) as P;
    case 'sku':
      return (IsarNative.jsObjectGet(jsObj, 'sku')) as P;
    case 'stringify':
      return (IsarNative.jsObjectGet(jsObj, 'stringify')) as P;
    case 'updated':
      return (IsarNative.jsObjectGet(jsObj, 'updated')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _productModelAttachLinks(
    IsarCollection col, int id, ProductModel object) {}

extension ProductModelByIndex on IsarCollection<ProductModel> {
  Future<ProductModel?> getById(String? id) {
    return getByIndex('id', [id]);
  }

  ProductModel? getByIdSync(String? id) {
    return getByIndexSync('id', [id]);
  }

  Future<bool> deleteById(String? id) {
    return deleteByIndex('id', [id]);
  }

  bool deleteByIdSync(String? id) {
    return deleteByIndexSync('id', [id]);
  }

  Future<List<ProductModel?>> getAllById(List<String?> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex('id', values);
  }

  List<ProductModel?> getAllByIdSync(List<String?> idValues) {
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

extension ProductModelQueryWhereSort
    on QueryBuilder<ProductModel, ProductModel, QWhere> {
  QueryBuilder<ProductModel, ProductModel, QAfterWhere> anyIsarId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }

  QueryBuilder<ProductModel, ProductModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IndexWhereClause.any(indexName: 'id'));
  }
}

extension ProductModelQueryWhere
    on QueryBuilder<ProductModel, ProductModel, QWhereClause> {
  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> isarIdEqualTo(
      int isarId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: isarId,
      includeLower: true,
      upper: isarId,
      includeUpper: true,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> isarIdNotEqualTo(
      int isarId) {
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

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> isarIdGreaterThan(
      int isarId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: isarId, includeLower: include),
    );
  }

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> isarIdLessThan(
      int isarId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: isarId, includeUpper: include),
    );
  }

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> isarIdBetween(
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

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> idEqualTo(
      String? id) {
    return addWhereClauseInternal(IndexWhereClause.equalTo(
      indexName: 'id',
      value: [id],
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> idNotEqualTo(
      String? id) {
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

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> idIsNull() {
    return addWhereClauseInternal(const IndexWhereClause.equalTo(
      indexName: 'id',
      value: [null],
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterWhereClause> idIsNotNull() {
    return addWhereClauseInternal(const IndexWhereClause.greaterThan(
      indexName: 'id',
      lower: [null],
      includeLower: false,
    ));
  }
}

extension ProductModelQueryFilter
    on QueryBuilder<ProductModel, ProductModel, QFilterCondition> {
  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      companyIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'companyId',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      companyIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'companyId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      companyIdMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'companyId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      createdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'created',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      createdEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'created',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      deletedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'deleted',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      deletedEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deleted',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      dirtyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'dirty',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> dirtyEqualTo(
      bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'dirty',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      hashCodeEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'hashCode',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      imageIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'image',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      imageGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> imageLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> imageBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'image',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'image',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'image',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      isarIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'isarId',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> isarIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> isarIdBetween(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      modifiedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'modified',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      modifiedEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'modified',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> nameIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'name',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      nameGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      priceIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'price',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      priceGreaterThan(double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> priceLessThan(
      double? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'price',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> priceBetween(
      double? lower, double? upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'price',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      quantityIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'quantity',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      quantityEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'quantity',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      shopIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'shopId',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> shopIdEqualTo(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> shopIdBetween(
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
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

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      shopIdContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'shopId',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> shopIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'shopId',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'sku',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      skuGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'sku',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'sku',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition> skuMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'sku',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      stringifyIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'stringify',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      stringifyEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'stringify',
      value: value,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      updatedIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updated',
      value: null,
    ));
  }

  QueryBuilder<ProductModel, ProductModel, QAfterFilterCondition>
      updatedEqualTo(bool? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updated',
      value: value,
    ));
  }
}

extension ProductModelQueryLinks
    on QueryBuilder<ProductModel, ProductModel, QFilterCondition> {}

extension ProductModelQueryWhereSortBy
    on QueryBuilder<ProductModel, ProductModel, QSortBy> {
  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByCompanyId() {
    return addSortByInternal('companyId', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByCompanyIdDesc() {
    return addSortByInternal('companyId', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy>
      sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByDirty() {
    return addSortByInternal('dirty', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByDirtyDesc() {
    return addSortByInternal('dirty', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByImage() {
    return addSortByInternal('image', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByImageDesc() {
    return addSortByInternal('image', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByModified() {
    return addSortByInternal('modified', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByModifiedDesc() {
    return addSortByInternal('modified', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByQuantity() {
    return addSortByInternal('quantity', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByQuantityDesc() {
    return addSortByInternal('quantity', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByShopId() {
    return addSortByInternal('shopId', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByShopIdDesc() {
    return addSortByInternal('shopId', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortBySku() {
    return addSortByInternal('sku', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortBySkuDesc() {
    return addSortByInternal('sku', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByUpdated() {
    return addSortByInternal('updated', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> sortByUpdatedDesc() {
    return addSortByInternal('updated', Sort.desc);
  }
}

extension ProductModelQueryWhereSortThenBy
    on QueryBuilder<ProductModel, ProductModel, QSortThenBy> {
  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByCompanyId() {
    return addSortByInternal('companyId', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByCompanyIdDesc() {
    return addSortByInternal('companyId', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByCreated() {
    return addSortByInternal('created', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByCreatedDesc() {
    return addSortByInternal('created', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy>
      thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByDirty() {
    return addSortByInternal('dirty', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByDirtyDesc() {
    return addSortByInternal('dirty', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByHashCode() {
    return addSortByInternal('hashCode', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByHashCodeDesc() {
    return addSortByInternal('hashCode', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByImage() {
    return addSortByInternal('image', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByImageDesc() {
    return addSortByInternal('image', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByModified() {
    return addSortByInternal('modified', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByModifiedDesc() {
    return addSortByInternal('modified', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByPrice() {
    return addSortByInternal('price', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByPriceDesc() {
    return addSortByInternal('price', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByQuantity() {
    return addSortByInternal('quantity', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByQuantityDesc() {
    return addSortByInternal('quantity', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByShopId() {
    return addSortByInternal('shopId', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByShopIdDesc() {
    return addSortByInternal('shopId', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenBySku() {
    return addSortByInternal('sku', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenBySkuDesc() {
    return addSortByInternal('sku', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByStringify() {
    return addSortByInternal('stringify', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByStringifyDesc() {
    return addSortByInternal('stringify', Sort.desc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByUpdated() {
    return addSortByInternal('updated', Sort.asc);
  }

  QueryBuilder<ProductModel, ProductModel, QAfterSortBy> thenByUpdatedDesc() {
    return addSortByInternal('updated', Sort.desc);
  }
}

extension ProductModelQueryWhereDistinct
    on QueryBuilder<ProductModel, ProductModel, QDistinct> {
  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByCompanyId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('companyId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByCreated() {
    return addDistinctByInternal('created');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByDeleted() {
    return addDistinctByInternal('deleted');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByDirty() {
    return addDistinctByInternal('dirty');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByHashCode() {
    return addDistinctByInternal('hashCode');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('image', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByIsarId() {
    return addDistinctByInternal('isarId');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByModified() {
    return addDistinctByInternal('modified');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByPrice() {
    return addDistinctByInternal('price');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByQuantity() {
    return addDistinctByInternal('quantity');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByShopId(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('shopId', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctBySku(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('sku', caseSensitive: caseSensitive);
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByStringify() {
    return addDistinctByInternal('stringify');
  }

  QueryBuilder<ProductModel, ProductModel, QDistinct> distinctByUpdated() {
    return addDistinctByInternal('updated');
  }
}

extension ProductModelQueryProperty
    on QueryBuilder<ProductModel, ProductModel, QQueryProperty> {
  QueryBuilder<ProductModel, String?, QQueryOperations> companyIdProperty() {
    return addPropertyNameInternal('companyId');
  }

  QueryBuilder<ProductModel, int?, QQueryOperations> createdProperty() {
    return addPropertyNameInternal('created');
  }

  QueryBuilder<ProductModel, bool?, QQueryOperations> deletedProperty() {
    return addPropertyNameInternal('deleted');
  }

  QueryBuilder<ProductModel, String?, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<ProductModel, bool?, QQueryOperations> dirtyProperty() {
    return addPropertyNameInternal('dirty');
  }

  QueryBuilder<ProductModel, int, QQueryOperations> hashCodeProperty() {
    return addPropertyNameInternal('hashCode');
  }

  QueryBuilder<ProductModel, String?, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<ProductModel, String?, QQueryOperations> imageProperty() {
    return addPropertyNameInternal('image');
  }

  QueryBuilder<ProductModel, int?, QQueryOperations> isarIdProperty() {
    return addPropertyNameInternal('isarId');
  }

  QueryBuilder<ProductModel, int?, QQueryOperations> modifiedProperty() {
    return addPropertyNameInternal('modified');
  }

  QueryBuilder<ProductModel, String?, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<ProductModel, double?, QQueryOperations> priceProperty() {
    return addPropertyNameInternal('price');
  }

  QueryBuilder<ProductModel, int?, QQueryOperations> quantityProperty() {
    return addPropertyNameInternal('quantity');
  }

  QueryBuilder<ProductModel, String?, QQueryOperations> shopIdProperty() {
    return addPropertyNameInternal('shopId');
  }

  QueryBuilder<ProductModel, String?, QQueryOperations> skuProperty() {
    return addPropertyNameInternal('sku');
  }

  QueryBuilder<ProductModel, bool?, QQueryOperations> stringifyProperty() {
    return addPropertyNameInternal('stringify');
  }

  QueryBuilder<ProductModel, bool?, QQueryOperations> updatedProperty() {
    return addPropertyNameInternal('updated');
  }
}
