import 'package:flutter/material.dart';

import 'package:auth/presentation/auth_module.dart';
import 'package:core/core/module/base_module.dart';
import 'package:core/core/localization/localization.dart';
import 'package:product/presentation/product_module.dart';

import 'base_module.dart';

class AppModules extends BaseModules {
  AppModules();

  final List<BaseModule> modules = [];

  @override
  void initEnv() {
    modules.addAll([
      AuthModule.instance,
      ProductModule.instance,
    ]);
  }

  @override
  List<LocalizationsDelegate> get localizationsDelegates => [
        ...modules.map((e) => e.localizationsDelegate),
        ModuleLocalization.delegate
      ];

  @override
  Future<void> inject() async {
    await Future.wait(modules.map((e) => e.inject()).toList());
  }
}
