import 'package:json_annotation/json_annotation.dart';

part 'product_params.g.dart';

@JsonSerializable()
class ProductParams {
  String title;
  num price;
  String description;
  String image;
  String category;

  ProductParams(
    this.title,
    this.price,
    this.category,
    this.description,
    this.image,
  );

  factory ProductParams.fromJson(Map<String, dynamic> json) =>
      _$ProductParamsFromJson(json);
  Map<String, dynamic> toJson() => _$ProductParamsToJson(this);
}
