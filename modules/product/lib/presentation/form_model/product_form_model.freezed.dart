// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductFormModel _$ProductFormModelFromJson(Map<String, dynamic> json) {
  return _ProductFormModel.fromJson(json);
}

/// @nodoc
mixin _$ProductFormModel {
  @FormControlAnnotation()
  String? get title => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  String? get category => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  String? get description => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  String? get image => throw _privateConstructorUsedError;
  @FormControlAnnotation()
  num? get price => throw _privateConstructorUsedError;

  /// Serializes this ProductFormModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductFormModelCopyWith<ProductFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductFormModelCopyWith<$Res> {
  factory $ProductFormModelCopyWith(
          ProductFormModel value, $Res Function(ProductFormModel) then) =
      _$ProductFormModelCopyWithImpl<$Res, ProductFormModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation() String? title,
      @FormControlAnnotation() String? category,
      @FormControlAnnotation() String? description,
      @FormControlAnnotation() String? image,
      @FormControlAnnotation() num? price});
}

/// @nodoc
class _$ProductFormModelCopyWithImpl<$Res, $Val extends ProductFormModel>
    implements $ProductFormModelCopyWith<$Res> {
  _$ProductFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductFormModelImplCopyWith<$Res>
    implements $ProductFormModelCopyWith<$Res> {
  factory _$$ProductFormModelImplCopyWith(_$ProductFormModelImpl value,
          $Res Function(_$ProductFormModelImpl) then) =
      __$$ProductFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation() String? title,
      @FormControlAnnotation() String? category,
      @FormControlAnnotation() String? description,
      @FormControlAnnotation() String? image,
      @FormControlAnnotation() num? price});
}

/// @nodoc
class __$$ProductFormModelImplCopyWithImpl<$Res>
    extends _$ProductFormModelCopyWithImpl<$Res, _$ProductFormModelImpl>
    implements _$$ProductFormModelImplCopyWith<$Res> {
  __$$ProductFormModelImplCopyWithImpl(_$ProductFormModelImpl _value,
      $Res Function(_$ProductFormModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? description = freezed,
    Object? image = freezed,
    Object? price = freezed,
  }) {
    return _then(_$ProductFormModelImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as num?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductFormModelImpl implements _ProductFormModel {
  const _$ProductFormModelImpl(
      {@FormControlAnnotation() this.title,
      @FormControlAnnotation() this.category,
      @FormControlAnnotation() this.description,
      @FormControlAnnotation() this.image,
      @FormControlAnnotation() this.price});

  factory _$ProductFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductFormModelImplFromJson(json);

  @override
  @FormControlAnnotation()
  final String? title;
  @override
  @FormControlAnnotation()
  final String? category;
  @override
  @FormControlAnnotation()
  final String? description;
  @override
  @FormControlAnnotation()
  final String? image;
  @override
  @FormControlAnnotation()
  final num? price;

  @override
  String toString() {
    return 'ProductFormModel(title: $title, category: $category, description: $description, image: $image, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductFormModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, category, description, image, price);

  /// Create a copy of ProductFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductFormModelImplCopyWith<_$ProductFormModelImpl> get copyWith =>
      __$$ProductFormModelImplCopyWithImpl<_$ProductFormModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductFormModelImplToJson(
      this,
    );
  }
}

abstract class _ProductFormModel implements ProductFormModel {
  const factory _ProductFormModel(
      {@FormControlAnnotation() final String? title,
      @FormControlAnnotation() final String? category,
      @FormControlAnnotation() final String? description,
      @FormControlAnnotation() final String? image,
      @FormControlAnnotation() final num? price}) = _$ProductFormModelImpl;

  factory _ProductFormModel.fromJson(Map<String, dynamic> json) =
      _$ProductFormModelImpl.fromJson;

  @override
  @FormControlAnnotation()
  String? get title;
  @override
  @FormControlAnnotation()
  String? get category;
  @override
  @FormControlAnnotation()
  String? get description;
  @override
  @FormControlAnnotation()
  String? get image;
  @override
  @FormControlAnnotation()
  num? get price;

  /// Create a copy of ProductFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductFormModelImplCopyWith<_$ProductFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
