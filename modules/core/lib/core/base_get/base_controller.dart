import 'package:get/get.dart';

import 'base_handle_controller.dart';

enum BaseViewStatus { loading, empty, failed, success }

class BaseController extends GetxController with BaseHandleController {
  Rx<BaseViewStatus> viewStatus = BaseViewStatus.loading.obs;
}
