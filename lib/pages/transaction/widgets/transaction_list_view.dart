import 'package:flutter/material.dart';
import 'package:flutter_project_resources/pages/transaction/transaction_controller.dart';
import 'package:get/get.dart';

class ListViewTransactions extends GetView<TransactionController> {
  const ListViewTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.transactions.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "${'transaction'.tr} #${controller.transactions[index].id}",
                          style: const TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      ProductDetail(
                        name: "product_id".tr,
                        value: controller.transactions[index].productId,
                      ),
                      ProductDetail(
                        name: "quantity".tr, 
                        value: controller.transactions[index].quantity.toString()
                      ),
                      ProductDetail(
                        name: "amount".tr, 
                        value: controller.transactions[index].amount.toString()
                      ),
                      ProductDetail(
                        name: "fee".tr, 
                        value: controller.transactions[index].fee.toString()
                      ),
                      ProductDetail(
                        name: "comment".tr, 
                        value: controller.transactions[index].comment ?? ''
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

class ProductDetail extends StatelessWidget {
  const ProductDetail({
    super.key, 
    this.name, 
    this.value, 
  });

  final String? name;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: Wrap(
        children: [
          Text(
            "$name: ",
            style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            textAlign: TextAlign.justify,
          ),
          Text(value!),
        ],
      ),
    );
  }
}
