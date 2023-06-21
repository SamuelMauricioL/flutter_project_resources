import 'dart:developer';

import 'package:flutter_project_resources/http/exceptions/server_parse_exception.dart';

class BackendResponse<T> {
  String? message;
  dynamic data;
  int? total;
  int? limit;
  int? skip;
  int? afterDate;
  int? beforeDate;

  BackendResponse(
      {this.message,
      this.data,
      this.total,
      this.limit,
      this.skip,
      this.afterDate,
      this.beforeDate});

  factory BackendResponse.singleEntity(
      Map<String, dynamic> json, fromJsonModel) {
    dynamic castedData;
    try {
      castedData = BackendResponse<T>(
        data: fromJsonModel(json),
      );
    } catch (e) {
      log("error on serialization: $e");
      throw ServerParseException();
    }

    return castedData;
  }

  factory BackendResponse.searchResult(var json, fromJsonModel) {
    List<T>? castedData;
    try {
      //case when is a list of entities
      json = json.cast<Map<String, dynamic>>();
      castedData ??= List<T>.from(json.map(fromJsonModel));
    } catch (e) {
      log("error on serialization: $e");
      throw ServerParseException();
      //ignore
    }
    return BackendResponse<T>(
      data: castedData,
      message: "none",
      total: 0,
      limit: 0,
      skip: 0,
      afterDate: 0,
      beforeDate: 0,
    );
  }
}
