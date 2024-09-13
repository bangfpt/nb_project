import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:auth/data/datasource/remote/auth_api.dart';

import 'repository_impl.dart';
import '../domain/repository.dart';
import 'datasource/local/shared_preference.dart';
import 'datasource/local/shared_prefrence_imp.dart';

class DataInjection {
  final _getIt = GetIt.instance;

  Future<void> inject() async {
    await _injectLocalService();
    _injectRemoteService();
  }

  Future<void> _injectLocalService() async {
    _getIt.registerSingleton<SharedPreference>(SharedPreferenceImp());
    await _getIt.get<SharedPreference>().initialize();
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
    _getIt.registerLazySingleton(() => AuthApi(dio));
    _getIt.registerLazySingleton<Repository>(() => AuthRepositoryImpl(
          _getIt.get<AuthApi>(),
          _getIt.get<SharedPreference>(),
        ));
  }
}
