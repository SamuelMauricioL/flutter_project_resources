import 'package:flutter/material.dart';
import 'package:flutter_project_resources/core/testing/values/key_widgets.dart';
import 'package:flutter_project_resources/routes/app_pages.dart';
import 'package:get/get.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('options_page'.tr)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              key: const Key(KeyWidgets.productButtonKey),
              onPressed: () => Get.offNamed(Routes.product),
              child: Text('products'.tr),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              key: const Key(KeyWidgets.transactionButtonKey),
              onPressed: () => Get.offNamed(Routes.transaction),
              child: Text('transactions'.tr),
            ),
          ],
        ),
      ),
    );
  }
}