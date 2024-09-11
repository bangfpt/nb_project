
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:injectable/injectable.dart';

import 'package:auth/data/data.dart';

part 'auth_api.g.dart';

@singleton
@RestApi()
abstract class AuthApi {
  @factoryMethod
  factory AuthApi(
    Dio dio,
  ) {
    return _AuthApi(dio,
        baseUrl: dio.options.baseUrl);
  }

  @POST('/login')
  Future<LoginModel> login(@Body() LoginParam model);
}