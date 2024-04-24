import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_shopping_app/src/core/network/app_network.dart';
import 'package:flutter_shopping_app/src/core/utils/constants/network_constant.dart';
import 'package:flutter_shopping_app/src/features/products/products_injections.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initInjections() async {
  // await initDotEnv();
  await intiDio();
  await initProductsPageInjections();
}

Future<void> initDotEnv() async {
  await dotenv.load();
}

Future<void> intiDio() async {
  await ProductDio.initProductDio(AppApi.productApiUrl);
}
