import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';

class ProductsWidget extends StatelessWidget {
  final List<ProductModel> products;
  const ProductsWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: products.map((e) => Text(e.title!)).toList(),
    );
  }
}
