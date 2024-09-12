import 'package:auth/data/data.dart';
import 'package:auth/domain/auth_controller.dart';
import 'package:auth/domain/repository.dart';
import 'package:auth/domain/use_case/login_use_case.dart';
import 'package:core/core/utils/either.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:get_it/get_it.dart';

import 'package:core/core/const/status_enum.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(param0) : super(const _AuthState());

  Future<void> signIn(LoginParam data) async {
    emit(state.copyWith(status: CommonStatus.loading));
    final Either<void, Exception> result =
        await LoginUseCase(GetIt.instance.get<Repository>()).login(
      data.username,
      data.password,
    );

    result.fold((left) {
      emit(
        state.copyWith(
          status: CommonStatus.loaded,
        ),
      );
      GetIt.instance.get<AuthController>().loginSuccessfully();
    }, (right) {
      emit(
        state.copyWith(
          status: CommonStatus.failure,
        ),
      );
      return;
    });
  }
}
