part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class LoadingGetProductsState extends HomeState {}

final class ErrorGetProductsState extends HomeState {
  final String errorMsg;
  const ErrorGetProductsState(this.errorMsg);
}

final class SuccessGetProductsState extends HomeState {
  final List<ProductModel> products;
  const SuccessGetProductsState(this.products);
}
