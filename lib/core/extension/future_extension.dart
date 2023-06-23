import 'package:flutter_project_resources/http/exceptions/app_exception.dart';
import 'package:flutter_project_resources/widgets/loading_dialog/loading_dialog.dart';
import 'package:get/get.dart';
import 'package:optional/optional.dart';
import 'string_extensions.dart';

typedef FutureException = Future Function(dynamic);

extension FutureExtension<T> on Future<T> {
  static dynamic _value;
  static FutureException? _onException;
  static bool _showErrorIfAny = false;
  static bool _showLoadingDialog = false;
  static bool _throwErrorIfAny = false;
  static String? _successMessage;
  static bool _hasError = false;
  static RxBool? _isLoading;

  static void _clearAll() {
    _value = null;
    _onException = null;
    _showErrorIfAny = false;
    _throwErrorIfAny = false;
    _hasError = false;
    _successMessage = null;
    _showLoadingDialog = false;
    _isLoading = null;
  }

  Future<void> complete(void Function(Optional<T>) result) async {
    _startLoading();
    try {
      _value = await this;
      _hasError = false;
    } catch (exception) {
      _hasError = true;
      await _handleException(exception);
      if (_throwErrorIfAny) rethrow;
    }
    await _endLoading();
    if (!_hasError) result(Optional.ofNullable(_value));
    _clearAll();
  }

  static void _startLoading() {
    if (_isLoading != null) _isLoading!(true);
    if (_showLoadingDialog) LoadingDialog.show();
  }

  static Future<void> _endLoading() async {
    if (_isLoading != null) _isLoading!(false);
    if (_successMessage.isNotBlank() && !_hasError) {
      await LoadingDialog.showStatus(true, message: _successMessage);
    } else {
      LoadingDialog.closeDialog();
    }
  }

  static Future<void> _handleException(exception) async {
    if (_showErrorIfAny) await displayErrorDialog(exception);
    if (_onException != null) _onException!(exception);
  }

  static Future<void> displayErrorDialog(exception) async {
    var message = 'unknownDefaultError'.tr;
    if (exception is AppException) message = exception.uiMessage;
    await LoadingDialog.showStatus(false, message: message);
  }

  Future<T> showSuccessMessage(String message) {
    _successMessage = message;
    return this;
  }

  Future<T> onException(Future Function(dynamic) onException) async {
    _onException = onException;
    return this;
  }

  Future<T> showErrorIfAny() async {
    _showErrorIfAny = true;
    return this;
  }

  Future<T> throwErrorIfAny() async {
    _throwErrorIfAny = true;
    return this;
  }

  Future<T> showLoadingDialog() async {
    _showLoadingDialog = true;
    return this;
  }

  Future<T> updateRxBool(RxBool isLoading) {
    _isLoading = isLoading;
    return this;
  }
}
