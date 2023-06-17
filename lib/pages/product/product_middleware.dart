import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // final path = route?.split('/');
    // print('ProductGuard redirect: $path');
    // if (path == null || path.length == 2) {
    //   return null;
    // }
    // if (path.length > 2) {
    //   return const RouteSettings(name: Routes.details);
    // }
    return null;
  }
}
