// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductFormModelImpl _$$ProductFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductFormModelImpl(
      title: json['title'] as String?,
      category: json['category'] as String?,
      description: json['description'] as String?,
      image: json['image'] as String?,
      price: json['price'] as num?,
    );

Map<String, dynamic> _$$ProductFormModelImplToJson(
        _$ProductFormModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'price': instance.price,
    };
