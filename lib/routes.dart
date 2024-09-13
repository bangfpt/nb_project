import 'package:get/get.dart';
import 'package:newbie_project/screen/splash/splash_screen.dart';

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
        page: () => const SplashScreen(),
        binding: SplashBinding()),
    GetPage(
        name: MainRouteName.home,
        page: () => const HomeScreen(),
        transitionDuration: const Duration(seconds: 0)),
  ];
}
