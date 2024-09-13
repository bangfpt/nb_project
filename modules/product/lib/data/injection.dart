import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:product/data/datasource/remote/product_api.dart';
import 'package:product/domain/product_repository.dart';
import 'package:product/domain/product_repository_impl.dart';

class ProductInjection {
  final _getIt = GetIt.instance;

  Future<void> inject() async {
    _injectRemoteService();
  }

  void _injectRemoteService() {
    final dio = Dio();
    dio
      ..options.baseUrl = 'https://fakestoreapi.com'
      ..options.connectTimeout = const Duration(seconds: 15)
      ..options.receiveTimeout = const Duration(seconds: 15)
      ..options.headers = {
        'Content-Type': 'application/json; charset=utf-8',
      };
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: kDebugMode,
        requestBody: kDebugMode,
        responseBody: kDebugMode,
        responseHeader: kDebugMode,
        error: kDebugMode,
        compact: kDebugMode,
        maxWidth: 90,
      ));
    }

    _getIt.registerLazySingleton(() {
      return dio;
    });
    _getIt.registerLazySingleton(() => ProductApi(dio));
    _getIt.registerLazySingleton<ProductRepository>(() => ProductRepositoryImpl(
          _getIt.get<ProductApi>(),
        ));
  }
}
