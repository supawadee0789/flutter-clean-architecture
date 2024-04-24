part of 'products_bloc.dart';

sealed class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

final class LoadingGetProductsState extends ProductsState {}

final class ErrorGetProductsState extends ProductsState {
  final String errorMsg;
  const ErrorGetProductsState(this.errorMsg);
}

final class SuccessGetProductsState extends ProductsState {
  final List<ProductModel> products;
  const SuccessGetProductsState(this.products);
}
