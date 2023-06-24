import 'package:flutter/material.dart';
import 'package:flutter_project_resources/routes/app_pages.dart';
import 'package:get/get.dart';

class OptionsPage extends StatelessWidget {
  const OptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Options Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.offNamed(Routes.product),
              child: const Text('Products'),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () => Get.offNamed(Routes.transaction),
              child: const Text('Transactions'),
            ),
          ],
        ),
      ),
    );
  }
}