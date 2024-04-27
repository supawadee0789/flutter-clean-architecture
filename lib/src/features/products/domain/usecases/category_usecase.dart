import 'package:dartz/dartz.dart';
import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/core/utils/usecases/usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/repositories/abstract_products_repository.dart';

class CategoryUseCase extends UseCase<List<String>, NoParams> {
  final AbstractProductRepository repository;

  CategoryUseCase(this.repository);

  @override
  Future<Either<Failure, List<String>>> call(NoParams params) async {
    final result = await repository.getCategories();
    return result.fold((l) => Left(l), (r) => Right(r));
  }
}
