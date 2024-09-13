import 'package:core/core/utils/either.dart';

import '../auth_repository.dart';

class LoginUseCase {
  final AuthRepository _repository;

  LoginUseCase(this._repository);

  Future<Either<void, Exception>> login(
      String username, String password) async {
    try {
      await _repository.login(username, password);
      return const Left(null);
    } on Exception catch (e) {
      return Right(e);
    }
  }
}
