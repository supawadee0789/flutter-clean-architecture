part of 'products_bloc.dart';

abstract class ProductsEvent {
  const ProductsEvent();
}

class OnGettingProductsEvent extends ProductsEvent {
  final bool withLoading;
  OnGettingProductsEvent({this.withLoading = true});
}

class OnFilteredByCategoryEvent extends ProductsEvent {
  final bool withLoading;
  final String category;
  OnFilteredByCategoryEvent({required this.category, this.withLoading = true});
}

class OnSearchEvent extends ProductsEvent {
  final String searchText;
  OnSearchEvent({required this.searchText});
}
