import 'package:flutter/material.dart';
import 'package:flutter_initial_proj/app/modules/transfer/controllers/transfer_controller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../../core/extra/app_dimens.dart';

class TransferViewComponent {
  List<Widget> getSendbyList(TransferController controller) {
    List<Widget> widgets = [];
    controller.sendBy.forEach((element) {
      if (controller.sendBy.indexOf(element) == 1)
        widgets.add(
          SizedBox(
            width: 16,
          ),
        );
      widgets.add(
        Expanded(
          child: ZoomTapAnimation(
            onTap: () {
              controller.sendBy.forEach((element) {
                element['selected'] = false;
              });
              controller.sendBy[controller.sendBy.indexOf(element)]['selected'] = true;
              controller.sendBy.refresh();
            },
            child: Container(
              height: Get.height * 0.125,
              decoration:
                  BoxDecoration(color: element['color'], borderRadius: BorderRadius.circular(12)),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Center(
                      child: element['logo'] != null
                          ? SvgPicture.asset(
                              element['logo'],
                              height: 40,
                            )
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FaIcon(
                                  element['icon'],
                                  color: Colors.white,
                                  size: 40,
                                ),
                                SizedBox(
                                  height: AppDimens.spaceSmall,
                                ),
                                Text('Bank',
                                    style: TextStyle(
                                        color: Colors.white, fontWeight: FontWeight.w600)),
                              ],
                            ),
                    ),
                  ),
                  if (element['selected'])
                    Positioned(
                      right: 5,
                      top: 5,
                      child: Container(
                        height: 20,
                        width: 20,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.green.shade600, borderRadius: BorderRadius.circular(100)),
                        child: Icon(
                          Icons.check,
                          size: 10,
                          color: Colors.white,
                        ),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      );

      if (controller.sendBy.indexOf(element) == 1)
        widgets.add(
          SizedBox(
            width: 16,
          ),
        );
    });

    return widgets;
  }
}
