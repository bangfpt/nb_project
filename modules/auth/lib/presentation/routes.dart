import 'package:auth/presentation/screen/auth/sign_in_screen.dart';
import 'package:flutter/material.dart';

class RouteName {
  static const _prefix = "/auth";
  static const login = "${_prefix}_login";
}

class Routes {
  static PageRoute login() => MaterialPageRoute(
      builder: (context) => const SignInScreen(),
      settings: const RouteSettings(name: RouteName.login));
}
