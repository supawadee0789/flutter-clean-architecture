part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  final List<ProductModel> products;
  const ProductsState({this.products = const []});

  @override
  List<Object> get props => [products];
}

final class LoadingGetProductsState extends ProductsState {}

final class ErrorGetProductsState extends ProductsState {
  final String errorMsg;
  const ErrorGetProductsState(this.errorMsg);
}

final class SuccessGetProductsState extends ProductsState {
  const SuccessGetProductsState(List<ProductModel> products)
      : super(products: products);
}

final class SearchedProductState extends ProductsState {
  final List<ProductModel> filtered;
  const SearchedProductState(this.filtered, List<ProductModel> allProducts)
      : super(products: allProducts);

  @override
  List<Object> get props => [filtered, products];
}
