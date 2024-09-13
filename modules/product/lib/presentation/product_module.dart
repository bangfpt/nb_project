import 'package:core/core/localization/localization.dart';
import 'package:core/core/module/base_module.dart';
import 'package:flutter/widgets.dart';

import '../data/injection.dart';

part 'product_module_imp.dart';

abstract class ProductModule extends BaseModule {
  static final ProductModule _instance = _ProductModuleImp();

  static ProductModule get instance {
    return _instance;
  }
}
