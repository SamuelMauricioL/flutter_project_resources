import 'package:flutter/material.dart';
import 'package:flutter_project_resources/routes/app_pages.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('login_page'.tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.offNamed(Routes.options),
              child: Text('login'.tr),
            ),
            ElevatedButton(
              onPressed: () => Get.offNamed(Routes.transaction),
              child: Text('login'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
