import 'package:flutter/material.dart';
import 'package:flutter_project_resources/pages/product/widgets/product_list_view.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Product Page')),
      body: const ListViewProducts(),
    );
  }
}
