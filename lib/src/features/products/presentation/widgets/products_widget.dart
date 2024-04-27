import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shopping_app/src/core/styles/theme_extension.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';
import 'package:go_router/go_router.dart';

class ProductsWidget extends StatelessWidget {
  final List<ProductModel> products;
  const ProductsWidget({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 3.7 / 5,
        children: products.map((p) {
          return GestureDetector(
            onTap: () => context.go("/details", extra: p),
            child: ProductItem(
              name: p.title!,
              image: p.image,
              price: p.price!,
            ),
          );
        }).toList());
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final double price;
  final String? image;
  const ProductItem(
      {super.key, required this.name, required this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: image != null
                    ? Image.network(
                        image!,
                        width: 100.w,
                        height: 120.h,
                      )
                    : SizedBox(
                        width: 100.w,
                        height: 120.h,
                        child: const Center(child: Text('No images')))),
            Center(
              child: Text(
                maxLines: 2,
                name,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
                style: context.textTheme.labelLarge,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 5.h),
              alignment: Alignment.bottomRight,
              child: Text('\$ ${price.toStringAsFixed(2)}',
                  style: context.textTheme.titleLarge!
                      .copyWith(fontWeight: FontWeight.w900)),
            ),
          ],
        ),
      ),
    );
  }
}
