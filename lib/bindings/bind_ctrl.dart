import 'package:explore_tasik_1/controller/main_controller.dart';

import 'package:get/get.dart';

class BindC extends Bindings {
  @override
  void dependencies() {
    Get.put(MainPageController());
  }
}
