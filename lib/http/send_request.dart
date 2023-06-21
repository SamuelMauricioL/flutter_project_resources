import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_project_resources/http/http_method.dart';
import 'package:image_picker/image_picker.dart';

dynamic _parseBody(dynamic body) {
  try {
    return jsonEncode(body);
  } catch (_) {
    return body;
  }
}

Future<FormData> _fromFileToFormData({required String filePath}) async {
  final blobName = json.decode(filePath) as String;
  final localFile =
      await XFile(blobName).readAsBytes().then((value) => value.cast<int>());
  final fileName = XFile(blobName).path.toString() + XFile(blobName).name;
  final multipartFile = MultipartFile.fromBytes(
    localFile,
    filename: fileName,
  );
  final formData = FormData.fromMap({
    "file": multipartFile,
    "name": multipartFile.filename,
  });
  return formData;
}

Future<Response> sendRequest({
  required Uri url,
  required HttpMethod method,
  required Map<String, String> headers,
  required dynamic body,
  required Duration timeOut,
  required bool parseBody,
  bool isFilePath = false,
  ProgressCallback? onReceiveProgress,
  String? token,
}) async {
  var finalHeaders = {...headers};

  if (method != HttpMethod.get) {
    final contentType = headers['Content-Type'];

    if (contentType == null || contentType.contains("application/json")) {
      finalHeaders['Content-Type'] = "application/json; charset=UTF-8";
      if (parseBody) {
        body = _parseBody(body);
      }
    }
  }

  if (token != null && token.isNotEmpty) {
    finalHeaders['Authorization'] = 'Token $token';
  }

  final options = BaseOptions(
      headers: finalHeaders, connectTimeout: timeOut.inMilliseconds);
  final dio = Dio(options);

  switch (method) {
    case HttpMethod.get:
      return dio.getUri(url, onReceiveProgress: onReceiveProgress);
    case HttpMethod.post:
      if (isFilePath) {
        final formData = await _fromFileToFormData(filePath: body);
        return dio.postUri(url,
            data: formData, onReceiveProgress: onReceiveProgress);
      } else {
        return dio.postUri(url,
            data: body, onReceiveProgress: onReceiveProgress);
      }
    case HttpMethod.put:
      return dio.putUri(url, data: body, onReceiveProgress: onReceiveProgress);
    case HttpMethod.delete:
      return dio.deleteUri(url, data: body);
    case HttpMethod.patch:
      return dio.patchUri(url,
          data: body, onReceiveProgress: onReceiveProgress);
  }
}
