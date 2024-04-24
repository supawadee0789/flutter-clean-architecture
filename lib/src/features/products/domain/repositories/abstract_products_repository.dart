import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';
import 'package:dartz/dartz.dart';

abstract class AbstractProductRepository {
  Future<Either<Failure, List<ProductModel>>> getProducts();
}
