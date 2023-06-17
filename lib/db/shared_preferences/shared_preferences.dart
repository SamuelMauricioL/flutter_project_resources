import 'package:flutter_project_resources/db/shared_preferences/shared_preferences_keys.dart';
import 'package:get_storage/get_storage.dart';

class SharedPreferences {
  final _prefBox = GetStorage("blaze_retail_get_storage");

  Future<void> erase() async {
    return await _prefBox.erase();
  }

  Future<void> setCompanyId(String companyId) =>
      _prefBox.write(SharedPreferencesKeys.companyId, companyId);
  Future<void> setShopId(String shopId) =>
      _prefBox.write(SharedPreferencesKeys.shopId, shopId);
  Future<void> setTerminalId(String terminalId) =>
      _prefBox.write(SharedPreferencesKeys.terminalId, terminalId);
  Future<void> setInventoryId(String inventoryId) =>
      _prefBox.write(SharedPreferencesKeys.inventoryId, inventoryId);
  Future<void> setEmployeeId(String employeeId) =>
      _prefBox.write(SharedPreferencesKeys.employeeId, employeeId);

  String get companyId => _prefBox.read(SharedPreferencesKeys.companyId) ?? '';
  String? get shopId => _prefBox.read(SharedPreferencesKeys.shopId);
  String? get terminalId => _prefBox.read(SharedPreferencesKeys.terminalId);
  String? get inventoryId => _prefBox.read(SharedPreferencesKeys.inventoryId);
  String? get employeeId => _prefBox.read(SharedPreferencesKeys.employeeId);

  void clearShopInfo() async {
    await _prefBox.remove(SharedPreferencesKeys.shopId);
  }

  Future<void> clearInventoryInfo() async {
    await _prefBox.remove(SharedPreferencesKeys.inventoryId);
  }

  Future<void> clearTerminalInfo() async {
    await _prefBox.remove(SharedPreferencesKeys.terminalId);
  }

  Future clearAppDefinitionParams() async {
    await _prefBox.remove(SharedPreferencesKeys.shopId);
    await _prefBox.remove(SharedPreferencesKeys.inventoryId);
    await _prefBox.remove(SharedPreferencesKeys.terminalId);
  }
}
