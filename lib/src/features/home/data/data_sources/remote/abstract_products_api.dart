import 'package:flutter_shopping_app/src/features/home/domain/models/product_model.dart';

abstract class AbstractProductApi {
  Future<List<ProductModel>> getProducts();
}
