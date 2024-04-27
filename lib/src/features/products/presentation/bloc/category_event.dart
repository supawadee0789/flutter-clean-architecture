part of 'category_bloc.dart';

abstract class CategoryEvent {
  const CategoryEvent();
}

class OnGettingCategoryEvent extends CategoryEvent {
  final bool withLoading;
  OnGettingCategoryEvent({this.withLoading = true});
}
