import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:flutter/foundation.dart';

class NetworkModule {
  Dio provideDio({
    required BaseOptions baseOptions,
    List<Interceptor>? interceptors,
  }) {
    final dio = Dio();
    dio
      ..options.baseUrl = baseOptions.baseUrl
      ..options.connectTimeout = baseOptions.connectTimeout
      ..options.receiveTimeout = baseOptions.receiveTimeout
      ..options.headers = {
        'Content-Type': 'application/json; charset=utf-8',
        ...baseOptions.headers
      };
    if(kDebugMode) {
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
    if (interceptors != null) {
      dio.interceptors.addAll(interceptors);
    }
    return dio;
  }
}
