import 'package:flutter/material.dart';
import 'package:flutter_project_resources/di/dependency_injection.dart';
import 'package:flutter_project_resources/environment_build/environment_build.dart';
import 'package:flutter_project_resources/i18n/languages.dart';
import 'package:flutter_project_resources/routes/app_pages.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Languages.init();
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
      locale: const Locale('es', 'ES'),
      fallbackLocale: const Locale('es', 'ES'),
      translations: Languages(),
    );
  }
}
