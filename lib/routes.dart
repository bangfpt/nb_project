import 'package:auth/presentation/screen/auth/sign_in_screen.dart';
import 'package:get/get.dart';

import 'screen/home_screen.dart';
import 'screen/splash/splash_binding.dart';

class MainRouteName {
  static const home = '/home';
  static const splash = '/';
}

class MainRoutePages {
  static final pages = [
    GetPage(
        name: MainRouteName.splash,
        page: () => const SignInScreen(),
        binding: SplashBinding()),
    GetPage(
        name: MainRouteName.home,
        page: () => const HomeScreen(),
        transitionDuration: const Duration(seconds: 0)),
  ];
}
