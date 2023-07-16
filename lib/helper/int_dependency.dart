import 'package:get/get.dart';

import '../controllers/list_controllers.dart';
import '../controllers/tap_controllers.dart';

class InitDepd implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies

    Get.lazyPut(() => TapController());
    Get.lazyPut(() => ListController());
  }
}
