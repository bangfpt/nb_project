import 'dart:async';
import 'dart:developer';
import 'package:get_it/get_it.dart';
import 'package:auth/domain/auth_repository.dart';
import 'package:flutter/material.dart';

import '../presentation/routes.dart';
import 'use_case/logged_use_case.dart';

class AuthController {
  Completer completer = Completer();

  Future<void> auth(BuildContext context) {
    final result = LoggedUseCase(GetIt.instance.get<AuthRepository>()).logged();
    result.fold((left) {
      if (left) {
        completer.complete();
      } else {
        Navigator.pushAndRemoveUntil(context, Routes.login(), (route) => false);
      }
    }, (right) {
      log('auth error $right');
    });
    return completer.future;
  }

  void loginSuccessfully() {
    if (!completer.isCompleted) {
      completer.complete();
    }
  }

  bool isAuth() => LoggedUseCase(GetIt.instance.get<AuthRepository>())
      .logged()
      .fold((left) => left, (right) => false);
}
