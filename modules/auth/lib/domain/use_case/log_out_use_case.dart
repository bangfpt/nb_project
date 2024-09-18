import 'package:core/core/utils/either.dart';

import '../auth_repository.dart';

class LogOutUseCase {
  final AuthRepository _repository;

  LogOutUseCase(this._repository);

  Future<Either<void, Exception>> logout() async {
    try {
      await _repository.logout();
      return const Left(null);
    } on Exception catch (e) {
      return Right(e);
    }
  }
}
