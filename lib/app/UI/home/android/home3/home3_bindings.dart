import 'package:flutter_vscode3/app/UI/home/android/home3/home3_controller.dart';
import 'package:get/get.dart';


class HomeBinding3 extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
  }
}