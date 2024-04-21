import 'package:dartz/dartz.dart';
import 'package:flutter_shopping_app/src/core/network/error/exceptions.dart';
import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/features/home/data/data_sources/remote/products_api_impl.dart';
import 'package:flutter_shopping_app/src/features/home/domain/models/product_model.dart';
import 'package:flutter_shopping_app/src/features/home/domain/repositories/abstract_products_repository.dart';

class ProductRepositoryImpl extends AbstractProductRepository {
  final ProductImplApi productApi;

  ProductRepositoryImpl(this.productApi);

  @override
  Future<Either<Failure, List<ProductModel>>> getProducts() async {
    try {
      final result = await productApi.getProducts();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, e.statusCode));
    } on CancelTokenException catch (e) {
      return Left(CancelTokenFailure(e.message, e.statusCode));
    }
  }
}
