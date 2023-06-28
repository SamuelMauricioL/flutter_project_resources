import 'package:flutter_project_resources/http/http_result.dart';

Map<String, dynamic> searchResult = {};

HttpResult httpResult404({Map<String, dynamic>? data}) {
  return HttpResult(
    error: HttpError(
      exception: Exception(),
      stackTrace: StackTrace.current,
      data: data ?? searchResult,
    ),
    data: null,
    statusCode: 404,
  );
}

HttpResult httpResult200({required dynamic data}) {
  return HttpResult(data: data, statusCode: 200, error: null);
}
