import 'package:flutter/material.dart';
import 'package:flutter_project_resources/routes/app_pages.dart';
import 'package:get/get.dart';

class AuthGuard extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    const isAuth = true;
    if (isAuth) {
      return null;
    } else {
      return const RouteSettings(name: Routes.login);
    }
  }
}
