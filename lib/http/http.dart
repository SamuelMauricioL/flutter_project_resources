// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_project_resources/db/shared_preferences/shared_preferences.dart';
import 'package:flutter_project_resources/http/api_version.dart';
import 'package:flutter_project_resources/http/http_method.dart';
import 'package:flutter_project_resources/http/http_result.dart';
import 'package:flutter_project_resources/http/send_request.dart';
import 'package:get/get.dart';

typedef Parser<T> = T Function(dynamic data);

class Http {
  final sharedPreferences = Get.find<SharedPreferences>();

  Http();

  Future<HttpResult<T>> request<T>(
    String path, {
    HttpMethod method = HttpMethod.get,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    dynamic body,
    Parser<T>? parser,
    Duration timeOut = const Duration(minutes: 3),
    RxInt? received,
    RxInt? total,
    bool parseBody = true,
    ApiVersion version = ApiVersion.v1,
    bool isFilePath = false,
  }) async {
    int? statusCode;
    dynamic data;

    final String baseUrl = dotenv.get('BLAZE_API');

    try {
      late Uri url;
      if (path.startsWith("http://") || path.startsWith("https://")) {
        url = Uri.parse(path);
      } else {
        url = Uri.parse("$baseUrl${version.prefix}$path");
      }

      if (queryParameters.isNotEmpty) {
        url = url.replace(
            queryParameters: {...url.queryParameters, ...queryParameters});
      }

      final response = await sendRequest(
        url: url,
        method: method,
        headers: headers,
        body: body,
        timeOut: timeOut,
        token: sharedPreferences.accessToken,
        parseBody: parseBody,
        onReceiveProgress: (int _received, int _total) {
          if (received != null && total != null) {
            received.value = _received;
            total.value = _total;
          }
        },
        isFilePath: isFilePath,
      );

      data = response.data;
      statusCode = response.statusCode;

      //throw errors from backend, meaning the request was sent
      if (statusCode! >= 400) {
        throw HttpError(
            exception: null, stackTrace: StackTrace.current, data: data);
      }

      return HttpResult<T>(
          data: parser != null ? parser(data) : data,
          statusCode: statusCode,
          error: null);
    } catch (e, s) {
      if (e is HttpError) {
        return HttpResult<T>(data: null, statusCode: statusCode!, error: e);
      }

      return HttpResult<T>(
          data: null,
          statusCode: statusCode ?? -1,
          error: HttpError(data: data, exception: e, stackTrace: s));
    }
  }
}
