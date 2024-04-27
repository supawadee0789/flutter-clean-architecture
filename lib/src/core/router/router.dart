import 'package:flutter_shopping_app/src/features/detail/presentaion/pages/detail_page.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';
import 'package:flutter_shopping_app/src/features/products/presentation/pages/products_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) => const ProductsPage(),
        routes: [
          GoRoute(
              path: 'details',
              builder: (context, state) =>
                  DetailPage(product: state.extra as ProductModel))
        ]),
  ],
);
