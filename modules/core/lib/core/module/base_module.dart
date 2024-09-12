import 'package:flutter/material.dart';

abstract class BaseModule {
  LocalizationsDelegate<dynamic> get localizationsDelegate;

  Future<void> inject();
}
