import 'shared_preference.dart';
import 'package:get_storage/get_storage.dart';

class SharedPreferenceImp extends SharedPreference {
  @override
  String? get accessToken => GetStorage(prefBox).read(keyAccessToken);

  @override
  Future<void> initialize() {
    return GetStorage.init(prefBox);
  }

  @override
  Future<void> saveAccessToken(String accessToken) {
    return GetStorage(prefBox).write(keyAccessToken, accessToken);
  }

  @override
  Future<void> removeAccessToken() {
    return GetStorage(prefBox).remove(keyAccessToken);
  }
}
