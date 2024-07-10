import 'package:get/get.dart';

import '../../../../presentation/welcoming_page/controllers/welcoming_page.controller.dart';

class WelcomingPageControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomingPageController>(
      () => WelcomingPageController(),
    );
  }
}
