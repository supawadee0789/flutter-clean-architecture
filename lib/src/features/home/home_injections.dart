import 'package:flutter_shopping_app/src/core/network/app_network.dart';
import 'package:flutter_shopping_app/src/core/utils/injections.dart';
import 'package:flutter_shopping_app/src/features/home/data/data_sources/remote/products_api_impl.dart';
import 'package:flutter_shopping_app/src/features/home/data/repositories/products_repo_impl.dart';
import 'package:flutter_shopping_app/src/features/home/domain/repositories/abstract_products_repository.dart';
import 'package:flutter_shopping_app/src/features/home/domain/usecases/product_usecase.dart';

initHomePageInjections() async {
  sl.registerSingleton<ProductImplApi>(ProductImplApi(ProductDio.api));
  sl.registerSingleton<AbstractProductRepository>(ProductRepositoryImpl(sl()));
  sl.registerSingleton<ProductUseCase>(ProductUseCase(sl()));
}
