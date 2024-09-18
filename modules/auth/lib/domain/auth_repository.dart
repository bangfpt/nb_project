import 'package:core/core/utils/either.dart';

abstract class AuthRepository {
  String? get accessToken;

  Future<void> saveAccessToken(String accessToken);

  Future<Either<void, Exception>> login(String username, String password);

  Future<void> logout();
}
