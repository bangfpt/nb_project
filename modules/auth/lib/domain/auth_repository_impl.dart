import 'dart:developer';
import 'package:auth/data/data.dart';
import 'package:core/core/utils/either.dart';

import '../data/datasource/remote/auth_api.dart';
import '../data/datasource/local/shared_preference.dart';

import 'auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthApi authApi;
  SharedPreference sharedPreference;

  AuthRepositoryImpl(this.authApi, this.sharedPreference);

  @override
  Future<Either<void, Exception>> login(
      String username, String password) async {
    try {
      final params = LoginParam(username, password);
      final response = await authApi.login(params);

      await saveAccessToken(response.token);
      return const Left(null);
    } on Exception catch (e) {
      log('login error $e');
      return Right(e);
    }
  }

  @override
  String? get accessToken => sharedPreference.accessToken;

  @override
  Future<void> saveAccessToken(String accessToken) =>
      sharedPreference.saveAccessToken(accessToken);

  @override
  Future<void> logout() => sharedPreference.removeAccessToken();
}
