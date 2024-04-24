import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_app/src/core/utils/injections.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/product_usecase.dart';
import 'package:flutter_shopping_app/src/features/products/presentation/bloc/products_bloc.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final ProductsBloc _bloc = ProductsBloc(productUseCase: sl<ProductUseCase>());

  @override
  void initState() {
    callProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProductsBloc, ProductsState>(
        bloc: _bloc,
        builder: (context, state) {
          if (state is SuccessGetProductsState) {
            return ListView(
              children: state.products.map((e) => Text(e.title!)).toList(),
            );
          }

          if (state is ErrorGetProductsState) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Failed getting data.'),
                  IconButton(
                      onPressed: callProducts,
                      icon: const Icon(Icons.refresh_rounded))
                ],
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }

  // Call product api
  callProducts({bool withLoading = true}) {
    _bloc.add(
      OnGettingProductsEvent(
        withLoading: withLoading,
      ),
    );
  }
}
