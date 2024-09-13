import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin BaseHandleController {
  final loadingDialogTag = "/loadingDialog";

  void showLoadingDialog() {
    Get.dialog(
        Center(
            child: CircularProgressIndicator(
          strokeWidth: 3.0,
          color: Theme.of(Get.context!).primaryColor,
        )),
        barrierDismissible: false,
        barrierColor: const Color(0x88000000),
        name: loadingDialogTag);
  }

  void hideLoadingDialog() {
    Get.until((route) => route.settings.name != loadingDialogTag);
  }

  void showError(Exception exception) {
    log('controller base exception$exception');
  }
}
