import 'package:flutter/material.dart';
import 'package:flutter_project_resources/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home_page'.tr)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Obx(() => Text(controller.counter.toString())),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => controller.dismis(),
                child: Text('dismiss'.tr),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => controller.add(),
                child: Text('add'.tr),
              ),
            ],
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              // Get.to(const ProductPage());
              // Get.toNamed(Routes.product);
              controller.goToProduct();
            },
            child: Text('go_to_product_page'.tr),
          ),
        ],
      ),
    );
  }
}
