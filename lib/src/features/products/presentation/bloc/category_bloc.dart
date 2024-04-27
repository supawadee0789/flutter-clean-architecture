import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/core/utils/usecases/usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/category_usecase.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryUseCase categoryUseCase;

  CategoryBloc({required this.categoryUseCase})
      : super(LoadingGetCategoriesState()) {
    on<OnGettingCategoryEvent>(_onGettingCategory);
  }

  _onGettingCategory(
      OnGettingCategoryEvent event, Emitter<CategoryState> emit) async {
    if (event.withLoading) {
      emit(LoadingGetCategoriesState());
    }

    final result = await categoryUseCase.call(NoParams());

    result.fold((l) {
      if (l is CancelTokenFailure) {
        emit(LoadingGetCategoriesState());
      } else {
        emit(ErrorGetCategoriesState(l.errorMessage));
      }
    }, (r) => emit(SuccessGetCategoriesState(r)));
  }
}
