import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class ModuleLocalizationImpVi extends ModuleLocalizationImp {
  ModuleLocalizationImpVi([String locale = 'vi']) : super(locale);

  @override
  String get dialogMessageDoneButton => 'Xong';

  @override
  String get dialogMessageTitle => 'Thông báo';

  @override
  String get requiredInfo => 'Thông tin bắt buộc';

  @override
  String get invalidInput => 'Dữ liệu không hợpn lệ';
}
