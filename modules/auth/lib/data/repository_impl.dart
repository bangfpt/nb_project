import 'dart:developer';
import 'package:auth/data/data.dart';

import 'datasource/local/shared_preference.dart';
import 'datasource/remote/auth_api.dart';

import '../domain/repository.dart';

class AuthRepositoryImpl extends Repository {
  AuthApi authApi;
  SharedPreference sharedPreference;

  AuthRepositoryImpl(this.authApi, this.sharedPreference);

  @override
  Future<void> login(String username, String password) async {
    try {
      final params = LoginParam(username, password);
      final response = await authApi.login(params);

      await saveAccessToken(response.token);
    } catch (e) {
      log('login error $e');
    }
  }

  @override
  String? get accessToken => sharedPreference.accessToken;

  @override
  Future<void> saveAccessToken(String accessToken) =>
      sharedPreference.saveAccessToken(accessToken);
}
