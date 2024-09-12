import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import 'package:auth/data/data.dart';

part 'auth_api.g.dart';

@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio) = _AuthApi;

  @POST('/login')
  Future<LoginModel> login(@Body() LoginParam model);
}
