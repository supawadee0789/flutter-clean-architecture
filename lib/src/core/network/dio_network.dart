import 'package:dio/dio.dart';

class DioNetwork {
  static Future<Dio> initDio(String apiUrl) async {
    final options = BaseOptions(
      baseUrl: apiUrl,
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 3),
    );
    return Dio(options);
  }
}
