import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_shopping_app/src/core/network/error/failures.dart';
import 'package:flutter_shopping_app/src/core/utils/usecases/usecase.dart';
import 'package:flutter_shopping_app/src/features/home/domain/models/product_model.dart';
import 'package:flutter_shopping_app/src/features/home/domain/usecases/product_usecase.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ProductUseCase productUseCase;

  HomeBloc({required this.productUseCase}) : super(LoadingGetProductsState()) {
    on<OnGettingProductsEvent>(_onGettingProducts);
  }

  _onGettingProducts(
      OnGettingProductsEvent event, Emitter<HomeState> emit) async {
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
}
