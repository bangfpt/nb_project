// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductParams _$ProductParamsFromJson(Map<String, dynamic> json) =>
    ProductParams(
      json['title'] as String,
      json['price'] as num,
      json['category'] as String,
      json['description'] as String,
      json['image'] as String,
    );

Map<String, dynamic> _$ProductParamsToJson(ProductParams instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'image': instance.image,
      'category': instance.category,
    };
