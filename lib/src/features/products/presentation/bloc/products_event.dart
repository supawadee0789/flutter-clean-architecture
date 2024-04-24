part of 'products_bloc.dart';

abstract class ProductsEvent {
  const ProductsEvent();
}

class OnGettingProductsEvent extends ProductsEvent {
  final bool withLoading;
  OnGettingProductsEvent({this.withLoading = true});
}
