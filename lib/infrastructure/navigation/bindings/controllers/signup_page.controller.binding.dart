import 'package:get/get.dart';

import '../../../../presentation/signup_page/controllers/signup_page.controller.dart';

class SignupPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignupPageController>(
      () => SignupPageController(),
    );
  }
}
