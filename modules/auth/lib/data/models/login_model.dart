import 'package:json_annotation/json_annotation.dart';


part 'login_model.g.dart';

@JsonSerializable()
class LoginModel {
  String accessToken;

  LoginModel(this.accessToken);

  factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
}