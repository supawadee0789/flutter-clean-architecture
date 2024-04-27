import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_shopping_app/src/core/utils/injections.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/category_usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/product_usecase.dart';
import 'package:flutter_shopping_app/src/features/products/presentation/bloc/category_bloc.dart';
import 'package:flutter_shopping_app/src/features/products/presentation/bloc/products_bloc.dart';
import 'package:flutter_shopping_app/src/features/products/presentation/widgets/categories_widget.dart';
import 'package:flutter_shopping_app/src/features/products/presentation/widgets/products_widget.dart';
import 'package:flutter_shopping_app/src/shared/widgets/loading_widget.dart';
import 'package:flutter_shopping_app/src/shared/widgets/refresh_widget.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final ProductsBloc _productBloc =
      ProductsBloc(productUseCase: sl<ProductUseCase>());
  final CategoryBloc _categoryBloc =
      CategoryBloc(categoryUseCase: sl<CategoryUseCase>());

  @override
  void initState() {
    callProducts();
    callCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // Page widget
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping App'),
      ),
      body: Column(
        children: [
          // Categories section
          SizedBox(
            height: 0.1.sh,
            child: BlocBuilder<CategoryBloc, CategoryState>(
              bloc: _categoryBloc,
              builder: (context, state) {
                if (state is SuccessGetCategoriesState) {
                  return Categories(categories: state.categories);
                }
                return const SizedBox();
              },
            ),
          ),

          // Products sections
          SizedBox(
            height: 0.75.sh,
            child: BlocBuilder<ProductsBloc, ProductsState>(
              bloc: _productBloc,
              builder: (context, state) {
                if (state is SuccessGetProductsState) {
                  return ProductsWidget(products: state.products);
                }

                if (state is ErrorGetProductsState) {
                  return RefreshWidget(
                    errorMsg: state.errorMsg,
                    onRefresh: () => callProducts(),
                  );
                }

                return const LoadingWidget();
              },
            ),
          ),
        ],
      ),
    );
  }

  // Pages API
  // Get products
  callProducts({bool withLoading = true}) {
    _productBloc.add(
      OnGettingProductsEvent(
        withLoading: withLoading,
      ),
    );
  }

  // Get categories
  callCategories({bool withLoading = true}) {
    _categoryBloc.add(OnGettingCategoryEvent(withLoading: withLoading));
  }
}
