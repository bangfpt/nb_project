import 'package:auth/presentation/auth_module.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:newbie_project/routes.dart';
import 'package:core/core/base_get/base_controller.dart';

class SplashController extends BaseController {
  @override
  void onReady() async {
    super.onReady();
    final isAuth = AuthModule.instance.isAuth();
    if (isAuth) {
      _goToHome();
      FlutterNativeSplash.remove();
      return;
    }
    FlutterNativeSplash.remove();
    await AuthModule.instance.start(Get.context!);
    _goToHome();
  }

  void _goToHome() {
    Get.offNamedUntil(MainRouteName.home, (route) => false);
  }
}
