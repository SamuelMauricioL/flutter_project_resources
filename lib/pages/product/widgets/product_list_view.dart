import 'package:flutter/material.dart';
import 'package:flutter_project_resources/core/testing/values/key_widgets.dart';
import 'package:flutter_project_resources/pages/product/product_controller.dart';
import 'package:get/get.dart';

class ListViewProducts extends GetView<ProductController> {
  const ListViewProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              key: const Key(KeyWidgets.searchTextFieldKey),
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.search),
                labelText: 'search'.tr,
                hintText: 'enter_sku_here'.tr,
              ),
              onSubmitted: (value) => controller.getProductBySku(value),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.products.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    controller.products[index].name ?? '',
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(controller.products[index].description ?? ''),
                  trailing: Wrap(
                    spacing: 10,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          controller.updateProduct(controller.products[index]);
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          controller.deleteProductBySku(
                              controller.products[index].sku);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
