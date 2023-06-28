import 'package:flutter_project_resources/api/product_api.dart';
import 'package:flutter_project_resources/api/transaction_api.dart';
import 'package:flutter_project_resources/db/data_base.dart';
import 'package:flutter_project_resources/db/shared_preferences/shared_preferences.dart';
import 'package:flutter_project_resources/http/http.dart';
import 'package:flutter_project_resources/services/product_service.dart';
import 'package:get/get.dart';

class DependencyInjection {
  static Future<void> init() async {
    /// Database
    await DataBase.init();

    ///Providers
    Get.lazyPut(() => SharedPreferences(), fenix: true);

    ///Apis
    Get.lazyPut(() => Http(), fenix: true);
    Get.lazyPut(() => ProductApi(), fenix: true);
    Get.lazyPut(() => TransactionApi(), fenix: true);

    ///Services
    Get.lazyPut(() => ProductService(), fenix: true);
  }
}
