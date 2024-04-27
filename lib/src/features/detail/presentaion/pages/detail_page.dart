import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shopping_app/src/core/styles/theme_extension.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';

class DetailPage extends StatefulWidget {
  final ProductModel product;
  const DetailPage({super.key, required this.product});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final ProductModel product = widget.product;
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title!),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        extendedPadding: EdgeInsets.symmetric(horizontal: 100.w),
        label: const Text('Add to basket'),
        icon: const Icon(Icons.shopping_basket),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        product.image!,
                        width: 0.5.sw,
                        height: 0.3.sh,
                      )),
                ),
              ),
              Center(
                child: Text(
                  '\$ ${product.price}',
                  style: context.textTheme.headlineLarge,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                product.title!,
                style: context.textTheme.titleLarge!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${product.rating?.rate}',
                      style:
                          context.textTheme.titleLarge!.copyWith(height: 1.4),
                    ),
                    Container(
                      height: 30.h,
                      width: 0.4.sw,
                      margin: EdgeInsets.only(left: 8.w),
                      child: Center(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: (product.rating?.rate ?? 0).toInt(),
                          itemBuilder: (BuildContext context, int index) {
                            return Icon(
                              Icons.star,
                              size: 24.sp,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                product.description ?? '',
                style: context.textTheme.bodyMedium,
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 32.h),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'In stock: ${product.rating?.count ?? '-'}',
                  style: context.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 0.1.sh),
            ],
          ),
        ),
      ),
    );
  }
}
