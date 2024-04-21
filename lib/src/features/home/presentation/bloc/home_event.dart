part of 'home_bloc.dart';

abstract class HomeEvent {
  const HomeEvent();
}

class OnGettingProductsEvent extends HomeEvent {
  final bool withLoading;
  OnGettingProductsEvent({this.withLoading = true});
}
