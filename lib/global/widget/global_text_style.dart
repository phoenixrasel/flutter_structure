import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/extra/app_dimens.dart';
import '../../core/theme/extra_colors.dart';

/**
 * Date: 9 Nov 2022
 * Title: [GlobalTextStyle] class
 * Description: This class will hold style of textView
 * Developer: Md. Rasel Khan
 * Position: Sr. Mobile Application Developer
 * Start Date: Today
 * End Date: Today
 */

class GlobalTextStyle {
  static customStyle({
    double? fontSize,
    Color? color,
    FontWeight? weight,
    FontStyle? style,
  }) =>
      GoogleFonts.inter(
        fontSize: fontSize ?? AppDimens.tNormal,
        fontWeight: weight ?? FontWeight.w300,
        color: color ?? Colors.white,
        fontStyle: style ?? FontStyle.normal,
      );

  static tabStyle() => TextStyle(
      color: ExtraColors.PRIMARY_100,
      fontSize: AppDimens.tSmall,
      fontWeight: FontWeight.w400);
}
