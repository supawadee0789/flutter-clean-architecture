import 'package:dio/dio.dart';
import 'package:flutter_shopping_app/src/core/network/error/dio_error_handler.dart';
import 'package:flutter_shopping_app/src/core/network/error/exceptions.dart';
import 'package:flutter_shopping_app/src/core/utils/constants/network_constant.dart';
import 'package:flutter_shopping_app/src/features/products/data/data_sources/remote/abstract_products_api.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';

class ProductImplApi extends AbstractProductApi {
  final Dio dio;

  ProductImplApi(this.dio);

  @override
  Future<List<ProductModel>> getProducts() async {
    try {
      final result = await dio.get(AppApi.getProductPath());
      if (result.data == null) {
        throw ServerException("Unknown Error", result.statusCode);
      }
      return ProductModel.fromJsonList(result.data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }

  @override
  Future<List<String>> getCategories() async {
    try {
      final result = await dio.get(AppApi.getCategoriesPath());
      if (result.data == null) {
        throw ServerException("Unknown Error", result.statusCode);
      }
      return (result.data as List<dynamic>).map((e) => e.toString()).toList();
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }

  @override
  Future<List<ProductModel>> filterByCategory(String category) async {
    try {
      final result = await dio.get(AppApi.filterByCategory(category));
      if (result.data == null) {
        throw ServerException("Unknown Error", result.statusCode);
      }
      return ProductModel.fromJsonList(result.data);
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        throw CancelTokenException(handleDioError(e), e.response?.statusCode);
      } else {
        throw ServerException(handleDioError(e), e.response?.statusCode);
      }
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException(e.toString(), null);
    }
  }
}
