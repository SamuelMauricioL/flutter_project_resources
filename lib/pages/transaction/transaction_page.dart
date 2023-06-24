import 'package:flutter/material.dart';
import 'package:flutter_project_resources/pages/transaction/widgets/transaction_list_view.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Transaction Page')),
      body: const ListViewTransactions(),
    );
  }
}
