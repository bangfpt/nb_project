import 'package:get/get.dart';
import 'package:newbie_project/screen/splash/splash_screen.dart';

import 'screen/splash/splash_binding.dart';

import 'package:product/presentation/screen/product_screen.dart';

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
        page: () => const ProductScreen(),
        transitionDuration: const Duration(seconds: 0)),
  ];
}
