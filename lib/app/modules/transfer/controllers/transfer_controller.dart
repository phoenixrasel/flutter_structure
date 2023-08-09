import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../core/extra/app_assets.dart';
import '../../../../core/theme/extra_colors.dart';

class TransferController extends GetxController {
  Map<String, TextEditingController> inputs = {
    "phoneNo": TextEditingController(),
    "name": TextEditingController(),
    "note": TextEditingController(),
    "bdt": TextEditingController(),
    "aed": TextEditingController(),
  };

  var sendBy = <Map<String, dynamic>>[
    {
      "name": "bKash",
      "color": Color(0xffE1136D),
      "logo": AppAssets.bkashLogo,
      "selected": false,
    },
    {
      "name": "Nagad",
      "color": Color(0xffED1C24),
      "logo": AppAssets.nagad,
      "selected": false,
    },
    {
      "name": "bKash",
      "color": ExtraColors.INFO_500,
      "icon": FontAwesomeIcons.buildingColumns,
      "selected": false,
    },
  ].obs;

  RxBool shouldSendByVisible = false.obs;
  RxBool shouldViewCustomerInfo = false.obs;
  RxBool shouldViewName = false.obs;

  final aedToBDT = 29;
  RxString btd = "0.00".obs;

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
