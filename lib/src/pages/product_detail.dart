import 'package:flutter/material.dart';
import 'package:flutter_design_playground/src/domain/product_domain.dart';

class ProductDetail extends StatelessWidget {
  const 
  ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {

    final product = ModalRoute.of(context)!.settings.arguments as ProductDomain;

    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: ListView(
        children: [
          Text(product.description),
        ],
      ),
    );
  }
}