import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class ModuleLocalizationImpEn extends ModuleLocalizationImp {
  ModuleLocalizationImpEn([String locale = 'en']) : super(locale);

  @override
  String get dialogMessageDoneButton => 'Done';

  @override
  String get dialogMessageTitle => 'Notice';

  @override
  String get requiredInfo => 'Required info';

  @override
  String get invalidInput => 'Invalid input';
}
