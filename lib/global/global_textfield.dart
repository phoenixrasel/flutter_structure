import 'package:flutter/material.dart';
import 'package:flutter_initial_proj/core/extra/app_dimens.dart';
import 'package:flutter_initial_proj/core/theme/extra_colors.dart';

class GlobalTextField {
  static view(
          {required TextEditingController controller,
          required String hint,
          TextInputType? inputType,
          bool obsecure = false,
          Widget? suffix,
          Widget? prefix,
          Function(String value)? onChange,
          double? height,
          bool enable = true,
          bool readOnly = false,
          int maxLine = 1}) =>
      Container(
          height: height,
          decoration:
              BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(30)),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextFormField(
              textAlign: TextAlign.start,
              keyboardType: inputType ?? TextInputType.text,
              controller: controller,
              obscureText: obsecure,
              onChanged: onChange,
              readOnly: readOnly,
              enabled: enable,
              cursorColor: ExtraColors.PRIMARY_100,
              maxLines: maxLine,
              decoration: InputDecoration(
                  suffixIcon: suffix,
                  enabled: true,
                  focusedBorder: inputFocusBorderStyle(),
                  // border: inputBorderStyle(),
                  enabledBorder: inputBorderStyle(),
                  // disabledBorder: inputBorderStyle(),
                  hintText: hint,
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129),
                    fontSize: AppDimens.tExtraSmall,
                  )),
            ),
          ));

  static inputBorderStyle() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.transparent),
      );
  static inputFocusBorderStyle() => OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      );
}
