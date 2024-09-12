import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';


part 'sign_in_form_model.freezed.dart';
part 'sign_in_form_model.g.dart';
part 'sign_in_form_model.gform.dart';


@freezed
@ReactiveFormAnnotation()
class SigninFormModel with _$SigninFormModel {
  const factory SigninFormModel({
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
        required String username,
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
        required String password,

  }) = _SigninFormModel;

  factory SigninFormModel.fromJson(Map<String, dynamic> json) =>
      _$SigninFormModelFromJson(json);
}