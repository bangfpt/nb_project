import 'package:auth/presentation/auth_module.dart';
import 'package:get/get.dart';
import 'package:newbie_project/routes.dart';

class SplashController {
  void onReady() async {
    final isAuth = AuthModule.instance.isAuth();
    if (isAuth) {
      _goToHome();
      return;
    }
    await AuthModule.instance.start(Get.context!);
    _goToHome();
  }

  void _goToHome() {
    Get.offNamedUntil(MainRouteName.home, (route) => false);
  }
}
