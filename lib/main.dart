import 'package:flutter/material.dart';
import 'package:flutter_project_resources/di/dependency_injection.dart';
import 'package:flutter_project_resources/environment_build/environment_build.dart';
import 'package:flutter_project_resources/routes/app_pages.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EnvironmentConfig.init();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
