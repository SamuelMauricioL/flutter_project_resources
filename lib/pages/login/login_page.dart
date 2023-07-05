import 'package:flutter/material.dart';
import 'package:flutter_project_resources/core/testing/values/key_widgets.dart';
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
          key: const Key(KeyWidgets.loginColumnKey),
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: const Key(KeyWidgets.loginButtonKey),
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
