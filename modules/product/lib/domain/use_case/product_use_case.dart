import 'package:core/core/utils/either.dart';

import '../../data/models/products_model.dart';
import '../../data/params/product_params.dart';
import '../product_repository.dart';

class ProductUseCase {
  final ProductRepository _repository;

  ProductUseCase(this._repository);

  Future<Either<List<ProductModel>, Exception>> products() async {
    try {
      final result = await _repository.products();
      return Left(result);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<ProductModel, Exception>> addNewProduct(
    ProductParams param,
  ) async {
    try {
      final result = await _repository.addNewProduct(param);
      return Left(result);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<ProductModel, Exception>> updateProduct(
    num productId,
    ProductParams param,
  ) async {
    try {
      final result = await _repository.updateProduct(productId, param);
      return Left(result);
    } on Exception catch (e) {
      return Right(e);
    }
  }

  Future<Either<void, Exception>> deleteProduct(
    num productId,
  ) async {
    try {
      final result = await _repository.deleteProduct(
        productId,
      );
      return Left(result);
    } on Exception catch (e) {
      return Right(e);
    }
  }
}
