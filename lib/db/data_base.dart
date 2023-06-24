import 'package:flutter_project_resources/models/product_model.dart';
import 'package:flutter_project_resources/models/transaction_model.dart';
import 'package:isar/isar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:path_provider/path_provider.dart';

class DataBase {
  static final DataBase _instance = DataBase._init();

  static Isar? _isar;
  Isar get isar => _isar!;

  factory DataBase() {
    return _instance;
  }

  DataBase._init();

  static Future<DataBase> init() async {
    String? directory;
    if (!kIsWeb) {
      final appDocDirectory = await getApplicationDocumentsDirectory();
      directory = appDocDirectory.path;
    }

    _isar = await Isar.open(
      schemas: getCollectionSchema(),
      directory: directory,
    );

    return DataBase._init();
  }

  Future<void> drop() async {
    await _isar!.writeTxn((isar) async {
      await isar.clear();
    });
  }

  static List<CollectionSchema> getCollectionSchema() {
    List<CollectionSchema> collections = [
      ProductModelSchema,
      TransactionModelSchema,
    ];
    return collections;
  }
}
