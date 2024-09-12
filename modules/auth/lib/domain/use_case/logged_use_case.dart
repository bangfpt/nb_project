import 'package:core/core/utils/either.dart';

import '../repository.dart';

class LoggedUseCase {
  final Repository _repository;

  LoggedUseCase(this._repository);

  Either<bool, Exception> logged() {
    try {
      final token = _repository.accessToken;
      return Left(token != null);
    } on Exception catch (e) {
      return Right(e);
    }
  }
}
