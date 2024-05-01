import 'package:flutter_shopping_app/src/core/network/app_network.dart';
import 'package:flutter_shopping_app/src/core/utils/injections.dart';
import 'package:flutter_shopping_app/src/features/products/data/data_sources/remote/products_api_impl.dart';
import 'package:flutter_shopping_app/src/features/products/data/repositories/products_repo_impl.dart';
import 'package:flutter_shopping_app/src/features/products/domain/repositories/abstract_products_repository.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/category_usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/filter_by_category_usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/product_usecase.dart';

initProductsPageInjections() async {
  sl.registerSingleton<ProductImplApi>(ProductImplApi(ProductDio.api));
  sl.registerSingleton<AbstractProductRepository>(ProductRepositoryImpl(sl()));
  sl.registerSingleton<ProductUseCase>(ProductUseCase(sl()));
  sl.registerSingleton<CategoryUseCase>(CategoryUseCase(sl()));
  sl.registerSingleton<FilterByCategoryUseCase>(FilterByCategoryUseCase(sl()));
}
