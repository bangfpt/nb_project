abstract class Repository {
  String? get accessToken;

  Future<void> saveAccessToken(String accessToken);

  Future<void> login(String username, String password);
}
