import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  Map<String, TextEditingController> inputs = {
    "user": TextEditingController(),
    "pass": TextEditingController(),
  };

  RxBool visibility = true.obs;
  changeVisibility() {
    visibility.value = visibility.value == false;
  }
 
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
