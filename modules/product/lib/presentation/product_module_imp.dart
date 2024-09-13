part of 'product_module.dart';

class _ProductModuleImp extends ProductModule {
  _ProductModuleImp();

  @override
  Future<void> inject() async {
    await ProductInjection().inject();
  }

  @override
  LocalizationsDelegate get localizationsDelegate =>
      const ModuleLocalizationsDelegate();
}
