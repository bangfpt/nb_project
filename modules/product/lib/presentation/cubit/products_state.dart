part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(CommonStatus.init) CommonStatus status,
    @Default([]) List<ProductModel> listProducts,
    ProductModel? product,
  }) = _ProductsState;
}
