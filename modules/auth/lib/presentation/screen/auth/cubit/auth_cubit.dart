import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:auth/data/data.dart';
import 'package:core/core/utils/either.dart';
import 'package:auth/presentation/routes.dart';
import 'package:core/core/const/status_enum.dart';
import 'package:auth/domain/auth_controller.dart';
import 'package:auth/domain/auth_repository.dart';
import 'package:auth/domain/use_case/login_use_case.dart';
import 'package:auth/domain/use_case/log_out_use_case.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const _AuthState());

  Future<void> signIn(LoginParam data) async {
    emit(state.copyWith(status: CommonStatus.loading));
    final Either<void, Exception> result =
        await LoginUseCase(GetIt.instance.get<AuthRepository>()).login(
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

  Future<void> signOut(BuildContext context) async {
    final Either<void, Exception> result =
        await LogOutUseCase(GetIt.instance.get<AuthRepository>()).logout();

    result.fold((left) {
      Navigator.pushAndRemoveUntil(context, Routes.login(), (route) => false);
    }, (right) {
      log('=====> logout error');
      return;
    });
  }
}
