import 'dart:developer';
import 'package:auth/data/data.dart';
import 'package:injectable/injectable.dart';

import 'datasource/local/shared_preference.dart';
import 'datasource/remote/auth_api.dart';

import '../domain/repository.dart';

@injectable
class AuthRepositoryImpl  extends Repository  {
  final AuthApi authApi;
  final SharedPreference sharedPreference;

  AuthRepositoryImpl(this.authApi, this.sharedPreference);

  @override
  Future<void> login(String username, String password) async {
    try {
      final response =
          await authApi.login(LoginParam(username, password));
    
        await saveAccessToken(response.accessToken);
       
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