import 'package:dio/dio.dart';
import 'package:flutter_project_resources/http/http_result.dart';
import 'package:flutter_project_resources/http/response/backend_error/backend_error.dart';
import 'package:get/get.dart' as state;

String errorHandler(HttpResult result,
    {String? connectionErrorMessage,
    String? timeoutErrorMessage,
    String? unknownErrorMessage}) {
  final errorException = result.error?.exception;
  if (errorException is DioError) return _handleDioError(errorException);
  return unknownErrorMessage ?? 'unknownDefaultError'.tr;
}

String _handleDioError(DioError dioError) {
  final type = dioError.type;
  switch (type) {
    case DioErrorType.response:
      return _getBackendErrorMessage(dioError);
    case DioErrorType.connectTimeout:
      return 'timeoutDefaultError'.tr;
    case DioErrorType.sendTimeout:
    case DioErrorType.receiveTimeout:
    case DioErrorType.cancel:
    case DioErrorType.other:
      return 'serverDefaultError'.tr;
  }
}

String _getBackendErrorMessage(DioError dioError) {
  try {
    return BackendError.fromJson(dioError.response?.data).message ??
        'serverDefaultError'.tr;
  } catch (e) {
    return 'serverDefaultError'.tr;
  }
}
