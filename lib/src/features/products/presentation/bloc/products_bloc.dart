import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/core/utils/usecases/usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/models/product_model.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/filter_by_category_usecase.dart';
import 'package:flutter_shopping_app/src/features/products/domain/usecases/product_usecase.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductUseCase productUseCase;
  final FilterByCategoryUseCase filterByCategoryUseCase;

  ProductsBloc(
      {required this.productUseCase, required this.filterByCategoryUseCase})
      : super(LoadingGetProductsState()) {
    on<OnGettingProductsEvent>(_onGettingProducts);
    on<OnFilteredByCategoryEvent>(_onFilteredByCategory);
    on<OnSearchEvent>(_onSearch);
  }

  _onGettingProducts(
      OnGettingProductsEvent event, Emitter<ProductsState> emit) async {
    if (event.withLoading) {
      emit(LoadingGetProductsState());
    }

    final result = await productUseCase.call(NoParams());

    result.fold((l) {
      if (l is CancelTokenFailure) {
        emit(LoadingGetProductsState());
      } else {
        emit(ErrorGetProductsState(l.errorMessage));
      }
    }, (r) => emit(SuccessGetProductsState(r)));
  }

  _onFilteredByCategory(
      OnFilteredByCategoryEvent event, Emitter<ProductsState> emit) async {
    if (event.withLoading) {
      emit(LoadingGetProductsState());
    }

    final result = await filterByCategoryUseCase.call(event.category);

    result.fold((l) {
      if (l is CancelTokenFailure) {
        emit(LoadingGetProductsState());
      } else {
        emit(ErrorGetProductsState(l.errorMessage));
      }
    }, (r) => emit(SuccessGetProductsState(r)));
  }

  _onSearch(OnSearchEvent event, Emitter<ProductsState> emit) async {
    if (event.searchText.isNotEmpty) {
      List<ProductModel> result = state.products
          .where((element) => element.title!
              .toLowerCase()
              .contains(event.searchText.toLowerCase()))
          .toList();
      emit(SearchedProductState(result, state.products));
    } else {
      emit(SearchedProductState(state.products, state.products));
    }
  }
}
