import 'package:flutter/material.dart';
import 'package:flutter_initial_proj/core/theme/extra_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class GlobalAppbar {
  static globalAppbar(
      {required Widget title, double? fontSize, Color? color, Widget? icon, Widget? favourite}) {
    return AppBar(
      backgroundColor: color ?? ExtraColors.PRIMARY_100,
      elevation: 0,
      centerTitle: false,
      leadingWidth: 30,
      leading: Container(
        padding: EdgeInsets.only(
          top: 16,
          left: 16,
          bottom: 16,
        ),
        child: ZoomTapAnimation(
            onTap: () {
              Get.back();
            },
            child: icon ?? FaIcon(FontAwesomeIcons.chevronLeft)),
      ),
      title: title,
    );
  }
}
