import 'dart:developer';

import 'package:product/data/datasource/remote/product_api.dart';
import 'package:product/data/models/products_model.dart';
import 'package:product/data/params/product_params.dart';

import 'product_repository.dart';

class ProductRepositoryImpl extends ProductRepository {
  ProductApi productApi;

  ProductRepositoryImpl(this.productApi);

  @override
  Future<ProductModel> addNewProduct(ProductParams param) async {
    try {
      final response = await productApi.addNewProduct(param);
      return response;
    } catch (e) {
      log('add new product error $e');
      rethrow;
    }
  }

  @override
  Future<void> deleteProduct(num productId) async {
    try {
      final response = await productApi.deleteProduct(productId);
      return response;
    } catch (e) {
      log('delete product error $e');
      rethrow;
    }
  }

  @override
  Future<List<ProductModel>> products() async {
    try {
      final response = await productApi.products();
      return response;
    } catch (e) {
      log('get list products error $e');
      rethrow;
    }
  }

  @override
  Future<ProductModel> updateProduct(num productId, ProductParams param) async {
    try {
      final response = await productApi.updateProduct(productId, param);
      return response;
    } catch (e) {
      log('get list products error $e');
      rethrow;
    }
  }
}
