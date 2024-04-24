import 'package:dartz/dartz.dart';
import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/core/utils/usecases/usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';
import 'package:flutter_shopping_app/src/features/products/domain/repositories/abstract_products_repository.dart';

class ProductUseCase extends UseCase<List<ProductModel>, NoParams> {
  final AbstractProductRepository repository;

  ProductUseCase(this.repository);

  @override
  Future<Either<Failure, List<ProductModel>>> call(NoParams params) async {
    final result = await repository.getProducts();
    print(result);
    return result.fold((l) => Left(l), (r) => Right(r));
  }
}
