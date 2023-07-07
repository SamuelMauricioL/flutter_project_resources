import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    return null;
  }
}
