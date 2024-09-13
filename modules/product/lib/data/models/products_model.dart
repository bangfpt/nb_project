import 'package:json_annotation/json_annotation.dart';

part 'products_model.g.dart';

@JsonSerializable()
class ProductModel {
  num id;
  String title;
  num price;
  String category;
  String description;
  String image;

  ProductModel(
    this.id,
    this.title,
    this.price,
    this.category,
    this.description,
    this.image,
  );

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
