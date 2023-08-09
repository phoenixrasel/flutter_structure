import 'package:flutter/material.dart';
import 'package:flutter_initial_proj/core/extra/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../core/extra/app_dimens.dart';
import '../../core/theme/extra_colors.dart';
import '../global_backdrop.dart';

class GlobalAlert {
  static yesNoAlert(
      {String title = "Alert",
      required String message,
      required VoidCallback onTap,
      Color? btnColor,
      String btnText = "Yes",
      bool activeNoBtn = true}) {
    Get.generalDialog(
        barrierDismissible: false,
        barrierLabel: "",
        transitionBuilder: (ctx, anim1, anim2, child) => GlobalBackDrop().drop(anim1, child),
        pageBuilder: (bCtx, anim1, anim2) => AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title),
                  if (activeNoBtn)
                    ZoomTapAnimation(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            color: ExtraColors.BLACK_200, borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.close,
                          color: ExtraColors.BLACK_600,
                          size: 15,
                        ),
                      ),
                    ),
                ],
              ),
              content: Container(
                // padding: EdgeInsets.all(8),
                child: Text(
                  message,
                  style: TextStyle(color: ExtraColors.BLACK_500),
                ),
              ),
              actions: [
                ZoomTapAnimation(
                  onTap: onTap,
                  child: Container(
                    height: 45,
                    width: Get.width,
                    decoration:
                        BoxDecoration(color: btnColor, borderRadius: BorderRadius.circular(100)),
                    alignment: Alignment.center,
                    child: Text(btnText,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: AppDimens.tNormal)),
                  ),
                )
              ],
            ));
  }

  static customContentAlert(
      {String title = "Confirmation",
      required String message,
      required Widget content,
      required VoidCallback onTap}) {
    Get.generalDialog(
        barrierDismissible: false,
        barrierLabel: "",
        transitionBuilder: (ctx, anim1, anim2, child) => GlobalBackDrop().drop(anim1, child),
        pageBuilder: (bCtx, anim1, anim2) => AlertDialog(
              insetPadding: EdgeInsets.all(AppDimens.bodyPadding),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              titlePadding: EdgeInsets.zero,
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppAssets.secondaryLogo,
                              height: 40,
                              width: 40,
                            ),
                            SizedBox(
                              width: AppDimens.spaceMedium,
                            ),
                            Text(
                              title,
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                        ZoomTapAnimation(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: ExtraColors.BLACK_200,
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              Icons.close,
                              color: ExtraColors.BLACK_600,
                              size: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1.5,
                  )
                ],
              ),
              content: content,
              contentPadding: EdgeInsets.zero,
              actionsPadding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
              actions: [
                ZoomTapAnimation(
                    onTap: onTap,
                    child: Container(
                      width: Get.width,
                      height: 45,
                      padding: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 24),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: ExtraColors.PRIMARY_100,
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Use spaceBetween
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.angleRight,
                                color: ExtraColors.PRIMARY_100,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                'Confirm',
                                style: TextStyle(
                                  fontSize: AppDimens.tNormal,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            ));
  }
}
