import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  Map<String, TextEditingController> inputs = {
    "user": TextEditingController(),
    "user_account": TextEditingController(),
    "amount": TextEditingController(),
  };
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
