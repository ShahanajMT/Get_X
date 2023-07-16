import 'package:get/get.dart';
import 'package:getx2/controllers/list_controllers.dart';
import 'package:getx2/controllers/tap_controllers.dart';

Future<void> init() async {
  Get.lazyPut(() => TapController());
  Get.lazyPut(() => ListController());
}