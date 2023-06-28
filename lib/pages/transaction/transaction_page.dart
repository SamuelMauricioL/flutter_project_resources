import 'package:flutter/material.dart';
import 'package:flutter_project_resources/pages/transaction/widgets/transaction_list_view.dart';
import 'package:get/get.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("transaction_page".tr),
        actions: [
          TextButton(
            onPressed: () {
              var locale = const Locale('en','US');
              Get.updateLocale(locale);
            },
            child: const Text('ENG', style: TextStyle(color: Colors.white),),
          ),
          TextButton(
            onPressed: () {
              var locale = const Locale('es','ES');
              Get.updateLocale(locale);
            },
            child: const Text('ESP', style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
      body: const ListViewTransactions(),
    );
  }
}
