import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'network_module.dart';

@module
abstract class NetworkModuleImpl {
  @lazySingleton
  Dio iamDio() => NetworkModule().provideDio(
        baseOptions: BaseOptions(
          baseUrl: 'https://fakestoreapi.com',
          connectTimeout: const Duration(seconds: 15),
          receiveTimeout: const Duration(seconds: 15),
        ),
        interceptors: [
          // TokenAttachInterceptor(),
        ],
      );

}