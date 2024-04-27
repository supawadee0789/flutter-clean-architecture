part of 'category_bloc.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

final class LoadingGetCategoriesState extends CategoryState {}

final class ErrorGetCategoriesState extends CategoryState {
  final String errorMsg;
  const ErrorGetCategoriesState(this.errorMsg);
}

final class SuccessGetCategoriesState extends CategoryState {
  final List<String> categories;
  const SuccessGetCategoriesState(this.categories);
}
