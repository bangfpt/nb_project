import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'product_form_model.freezed.dart';
part 'product_form_model.g.dart';
part 'product_form_model.gform.dart';

@freezed
@ReactiveFormAnnotation()
class ProductFormModel with _$ProductFormModel {
  const factory ProductFormModel({
    @FormControlAnnotation() String? title,
    @FormControlAnnotation() String? category,
    @FormControlAnnotation() String? description,
    @FormControlAnnotation() String? image,
    @FormControlAnnotation() num? price,
  }) = _ProductFormModel;

  factory ProductFormModel.fromJson(Map<String, dynamic> json) =>
      _$ProductFormModelFromJson(json);
}
