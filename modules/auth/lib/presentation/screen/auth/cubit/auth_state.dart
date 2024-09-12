part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(CommonStatus.init) CommonStatus status,
    @Default('') String accessToken,
  }) = _AuthState;
}
