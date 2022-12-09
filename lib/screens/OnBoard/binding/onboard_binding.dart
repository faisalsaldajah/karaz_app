import 'package:get/get.dart';
import 'package:karaz_user/screens/OnBoard/controller/onboard_controller.dart';

class OnBoardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnBoardController>(
      () => OnBoardController(),
    );
  }
}