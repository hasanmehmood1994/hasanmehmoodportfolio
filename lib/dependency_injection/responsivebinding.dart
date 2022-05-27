import 'package:get/get.dart';

import '../responsive_controller.dart';

class ResponsiveBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<ResponsiveController>(ResponsiveController());
  }
}