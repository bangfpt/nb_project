import 'package:auth/data/datasource/remote/auth_api.dart';
import 'package:dio/dio.dart';

import '../domain/repository.dart';
import 'datasource/local/shared_preference.dart';
import 'datasource/local/shared_prefrence_imp.dart';
import 'repository_impl.dart';
import 'package:get_it/get_it.dart';

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
    _getIt.registerLazySingleton(() => AuthApi(_getIt.get<Dio>()));
    _getIt.registerLazySingleton<Repository>(() => AuthRepositoryImpl(
          _getIt.get<AuthApi>(),
          _getIt.get<SharedPreference>(),
        ));
    // _getIt.registerLazySingleton<AuthInterceptor>(
    //     () => AuthInterceptor(_getIt.get<Dio>(), _getIt.get<Repository>()));

    // _getIt.get<Dio>().interceptors.add(_getIt.get<AuthInterceptor>());
  }
}
