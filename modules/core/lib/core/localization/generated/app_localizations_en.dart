import 'app_localizations.dart';

/// The translations for English (`en`).
class ModuleLocalizationImpEn extends ModuleLocalizationImp {
  ModuleLocalizationImpEn([String locale = 'en']) : super(locale);

  @override
  String get dialog_message_done_button => 'Done';

  @override
  String get dialog_message_title => 'Notice';

  @override
  String get required_info => 'Required info';

  @override
  String get invalid_input => 'Invalid input';
}
