abstract class SharedPreference {
  final String prefBox = "AuthCache";
  final String keyAccessToken = "AccessToken";

  Future<void> initialize();

  String? get accessToken;

  Future<void> saveAccessToken(String accessToken);

  Future<void> removeAccessToken();
}
