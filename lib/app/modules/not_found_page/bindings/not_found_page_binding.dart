import 'package:get/get.dart';

import '../controllers/not_found_page_controller.dart';

class NotFoundPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotFoundPageController>(
      () => NotFoundPageController(),
    );
  }
}
