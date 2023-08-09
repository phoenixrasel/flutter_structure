import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../../core/extra/app_assets.dart';
import '../../../../core/theme/extra_colors.dart';
import '../../../../global/global_textfield.dart';
import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(height: 30), // Add some spacing at the top
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: SvgPicture.asset(AppAssets.secondaryLogo),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Login with your phone number',
                    style: TextStyle(fontSize: 18, color: Colors.grey.shade700),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 24),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300, borderRadius: BorderRadius.circular(100)),
                        height: 45,
                        width: 45,
                        padding: EdgeInsets.all(10),
                        child: SvgPicture.asset(
                          AppAssets.flag,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 12, right: 24),
                          child: GlobalTextField.view(
                            height: 45,
                            controller: controller.inputs['user']!,
                            hint: "Enter Phone Number",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300, borderRadius: BorderRadius.circular(100)),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 24),
                        height: 45,
                        width: 45,
                        child: Icon(
                          Icons.lock_rounded,
                          color: Colors.grey.shade700,
                        ),
                      ),
                      Expanded(
                        child: Obx(
                          () => Container(
                            padding: EdgeInsets.only(left: 12, right: 24),
                            child: GlobalTextField.view(
                              height: 45,
                              controller: controller.inputs['pass']!,
                              hint: "Password",
                              obsecure: controller.visibility.value,
                              suffix: IconButton(
                                onPressed: () {
                                  controller.changeVisibility();
                                },
                                icon: Icon(
                                  controller.visibility.value
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey.shade700,
                                  size: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  ZoomTapAnimation(
                    onTap: () {
                      Get.toNamed(Routes.HOME);
                    },
                    child: Container(
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: ExtraColors.PRIMARY_100),
                      padding: EdgeInsets.all(10),
                      height: 55,
                      width: 55,
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.angleRight,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
