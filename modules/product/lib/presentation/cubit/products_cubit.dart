import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:core/core/const/status_enum.dart';

import '../../domain/product_repository.dart';
import '../../data/models/products_model.dart';
import '../../data/params/product_params.dart';
import '../../domain/use_case/product_use_case.dart';

part 'products_state.dart';
part 'products_cubit.freezed.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(const _ProductsState());

  Future<void> products() async {
    emit(state.copyWith(status: CommonStatus.loading));
    final result = await ProductUseCase(GetIt.instance.get<ProductRepository>())
        .products();

    result.fold((left) {
      emit(
        state.copyWith(
          status: CommonStatus.loaded,
          listProducts: left,
        ),
      );
    }, (right) {
      emit(
        state.copyWith(
          status: CommonStatus.failure,
        ),
      );
      return;
    });
  }

  Future<void> editProduct(num productId, ProductParams param) async {
    emit(state.copyWith(status: CommonStatus.loading));
    final result = await ProductUseCase(GetIt.instance.get<ProductRepository>())
        .updateProduct(productId, param);
    result.fold((left) {
      emit(
        state.copyWith(
          status: CommonStatus.loaded,
        ),
      );
    }, (right) {
      emit(
        state.copyWith(
          status: CommonStatus.failure,
        ),
      );
      return;
    });
  }

  Future<void> addNewProduct(ProductParams param) async {
    emit(state.copyWith(status: CommonStatus.loading));
    final result = await ProductUseCase(GetIt.instance.get<ProductRepository>())
        .addNewProduct(param);
    result.fold((left) {
      emit(
        state.copyWith(
          status: CommonStatus.loaded,
        ),
      );
    }, (right) {
      emit(
        state.copyWith(
          status: CommonStatus.failure,
        ),
      );
      return;
    });
  }

  Future<void> deleteProduct(
    num productId,
  ) async {
    emit(state.copyWith(status: CommonStatus.loading));
    final result = await ProductUseCase(GetIt.instance.get<ProductRepository>())
        .deleteProduct(productId);
    result.fold((left) {
      emit(
        state.copyWith(
          status: CommonStatus.loaded,
        ),
      );
    }, (right) {
      emit(
        state.copyWith(
          status: CommonStatus.failure,
        ),
      );
      return;
    });
  }
}
