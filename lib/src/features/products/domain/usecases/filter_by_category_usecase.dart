import 'package:dartz/dartz.dart';
import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/core/utils/usecases/usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';
import 'package:flutter_shopping_app/src/features/products/domain/repositories/abstract_products_repository.dart';

class FilterByCategoryUseCase extends UseCase<List<ProductModel>, String> {
  final AbstractProductRepository repository;

  FilterByCategoryUseCase(this.repository);

  @override
  Future<Either<Failure, List<ProductModel>>> call(String params) async {
    final result = await repository.filterByCategory(params);
    return result.fold((l) => Left(l), (r) => Right(r));
  }
}
