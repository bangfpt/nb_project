import 'app_localizations.dart';

/// The translations for Vietnamese (`vi`).
class ModuleLocalizationImpVi extends ModuleLocalizationImp {
  ModuleLocalizationImpVi([String locale = 'vi']) : super(locale);

  @override
  String get dialog_message_done_button => 'Xong';

  @override
  String get dialog_message_title => 'Thông báo';

  @override
  String get required_info => 'Thông tin bắt buộc';

  @override
  String get invalid_input => 'Dữ liệu không hợpn lệ';
}
