import 'package:core/core/localization/localization.dart';
import 'package:core/core/module/base_module.dart';
import 'package:flutter/widgets.dart';

import '../data/injection.dart';
import 'package:get_it/get_it.dart';
import '../domain/auth_controller.dart';

part 'auth_module_imp.dart';

abstract class AuthModule extends BaseModule {
  static final AuthModule _instance = _AuthModuleImp();

  static AuthModule get instance {
    return _instance;
  }

  Future<void> start(BuildContext context);

  bool isAuth();
}
