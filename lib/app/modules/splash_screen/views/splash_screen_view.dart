import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../core/extra/app_assets.dart';
import '../../../../core/theme/extra_colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Get.offNamed(Routes.LOGIN);
    });
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            color: ExtraColors.PRIMARY_100,
          ),
          child: Stack(
            children: [
              Center(child: SvgPicture.asset(AppAssets.logo)),
              Positioned(
                  bottom: 5,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [],
                  )),
            ],
          )),
    );
  }
}
