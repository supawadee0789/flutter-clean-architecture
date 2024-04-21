import 'package:dio/dio.dart';
import 'package:flutter_shopping_app/src/core/network/dio_network.dart';

class ProductDio extends DioNetwork {
  static late Dio api;
  static Future<void> initProductDio(String apiUrl) async {
    api = await DioNetwork.initDio(apiUrl);
  }
}
