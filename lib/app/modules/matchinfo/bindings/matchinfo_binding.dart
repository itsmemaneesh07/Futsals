import 'package:get/get.dart';

import '../controllers/matchinfo_controller.dart';

class MatchinfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MatchinfoController>(
      () => MatchinfoController(),
    );
  }
}
