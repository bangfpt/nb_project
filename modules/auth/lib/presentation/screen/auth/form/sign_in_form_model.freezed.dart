// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SigninFormModel _$SigninFormModelFromJson(Map<String, dynamic> json) {
  return _SigninFormModel.fromJson(json);
}

/// @nodoc
mixin _$SigninFormModel {
  @FormControlAnnotation(validators: [RequiredValidator()])
  String get username => throw _privateConstructorUsedError;
  @FormControlAnnotation(validators: [RequiredValidator()])
  String get password => throw _privateConstructorUsedError;

  /// Serializes this SigninFormModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SigninFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SigninFormModelCopyWith<SigninFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninFormModelCopyWith<$Res> {
  factory $SigninFormModelCopyWith(
          SigninFormModel value, $Res Function(SigninFormModel) then) =
      _$SigninFormModelCopyWithImpl<$Res, SigninFormModel>;
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [RequiredValidator()])
      String username,
      @FormControlAnnotation(validators: [RequiredValidator()])
      String password});
}

/// @nodoc
class _$SigninFormModelCopyWithImpl<$Res, $Val extends SigninFormModel>
    implements $SigninFormModelCopyWith<$Res> {
  _$SigninFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SigninFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SigninFormModelImplCopyWith<$Res>
    implements $SigninFormModelCopyWith<$Res> {
  factory _$$SigninFormModelImplCopyWith(_$SigninFormModelImpl value,
          $Res Function(_$SigninFormModelImpl) then) =
      __$$SigninFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@FormControlAnnotation(validators: [RequiredValidator()])
      String username,
      @FormControlAnnotation(validators: [RequiredValidator()])
      String password});
}

/// @nodoc
class __$$SigninFormModelImplCopyWithImpl<$Res>
    extends _$SigninFormModelCopyWithImpl<$Res, _$SigninFormModelImpl>
    implements _$$SigninFormModelImplCopyWith<$Res> {
  __$$SigninFormModelImplCopyWithImpl(
      _$SigninFormModelImpl _value, $Res Function(_$SigninFormModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SigninFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = null,
    Object? password = null,
  }) {
    return _then(_$SigninFormModelImpl(
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SigninFormModelImpl implements _SigninFormModel {
  const _$SigninFormModelImpl(
      {@FormControlAnnotation(validators: [RequiredValidator()])
      required this.username,
      @FormControlAnnotation(validators: [RequiredValidator()])
      required this.password});

  factory _$SigninFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SigninFormModelImplFromJson(json);

  @override
  @FormControlAnnotation(validators: [RequiredValidator()])
  final String username;
  @override
  @FormControlAnnotation(validators: [RequiredValidator()])
  final String password;

  @override
  String toString() {
    return 'SigninFormModel(username: $username, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninFormModelImpl &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, username, password);

  /// Create a copy of SigninFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninFormModelImplCopyWith<_$SigninFormModelImpl> get copyWith =>
      __$$SigninFormModelImplCopyWithImpl<_$SigninFormModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SigninFormModelImplToJson(
      this,
    );
  }
}

abstract class _SigninFormModel implements SigninFormModel {
  const factory _SigninFormModel(
      {@FormControlAnnotation(validators: [RequiredValidator()])
      required final String username,
      @FormControlAnnotation(validators: [RequiredValidator()])
      required final String password}) = _$SigninFormModelImpl;

  factory _SigninFormModel.fromJson(Map<String, dynamic> json) =
      _$SigninFormModelImpl.fromJson;

  @override
  @FormControlAnnotation(validators: [RequiredValidator()])
  String get username;
  @override
  @FormControlAnnotation(validators: [RequiredValidator()])
  String get password;

  /// Create a copy of SigninFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SigninFormModelImplCopyWith<_$SigninFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
