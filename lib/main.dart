import 'package:flutter/material.dart';
import 'package:flutter_project_resources/db/data_base.dart';
import 'package:flutter_project_resources/routes/app_pages.dart';
import 'package:get/get.dart';

void main() async {
  await DataBase.init();
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
