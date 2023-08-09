import 'package:flutter/material.dart';
import 'package:flutter_initial_proj/app/routes/app_pages.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

import '../../../../core/extra/app_assets.dart';
import '../../../../core/extra/app_dimens.dart';
import '../../../../core/theme/extra_colors.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(color: ExtraColors.PRIMARY_100),
            child: Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: SvgPicture.asset(
                                  AppAssets.logo,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              SizedBox(width: 8),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    child: Text(
                                      'MD. RASEL KHAN',
                                      style: TextStyle(
                                          color: Colors.white, fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  Text(
                                    '029880550',
                                    style:
                                        TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ],
                          )),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 3, left: 3, bottom: 3, right: 20),
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                    color: Colors.white, borderRadius: BorderRadius.circular(24)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 24,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        color: ExtraColors.PRIMARY_100,
                                        borderRadius: BorderRadius.circular(100),
                                      ),
                                    ),
                                    Text(
                                      '  Balance',
                                      style: TextStyle(
                                          fontSize: 11,
                                          color: ExtraColors.PRIMARY_100,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          leadingWidth: 60,
          toolbarHeight: 100,
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppDimens.paddingExtraLarge,
            vertical: AppDimens.paddingLarge,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Our Services',
                style: TextStyle(color: Colors.grey.shade700),
              ),
              SizedBox(
                height: AppDimens.spaceMedium,
              ),
              Divider(
                height: 1,
                color: ExtraColors.PRIMARY_100,
              ),
              SizedBox(
                height: AppDimens.spaceLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ZoomTapAnimation(
                    onTap: () {
                      Get.toNamed(Routes.TRANSFER);
                    },
                    child: Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey.shade300),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade100,
                            blurRadius: 2,
                            offset: Offset(4, 4), // Shadow position
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: SvgPicture.asset(
                            AppAssets.transfer,
                            height: 45,
                            width: 45,
                          )),
                          SizedBox(
                            height: AppDimens.spaceSmall,
                          ),
                          Text(
                            'Transfer',
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w600,
                                fontSize: AppDimens.tExtraSmall),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 2,
                          offset: Offset(4, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: SvgPicture.asset(
                          AppAssets.request,
                          height: 45,
                          width: 45,
                        )),
                        SizedBox(
                          height: AppDimens.spaceSmall,
                        ),
                        Text(
                          'Request',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w600,
                              fontSize: AppDimens.tExtraSmall),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: AppDimens.spaceExtraLarge,
              ),
              Text(
                'Others',
                style: TextStyle(color: Colors.grey.shade700, fontFamily: 'SansPro'),
              ),
              SizedBox(
                height: AppDimens.spaceMedium,
              ),
              Divider(
                height: 1,
                color: ExtraColors.PRIMARY_100,
              ),
              SizedBox(
                height: AppDimens.spaceLarge,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 2,
                          offset: Offset(4, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: SvgPicture.asset(
                          AppAssets.contact,
                          height: 40,
                          width: 40,
                        )),
                        SizedBox(
                          height: AppDimens.spaceMedium,
                        ),
                        Text(
                          'Contanct Us',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontWeight: FontWeight.w600,
                              fontSize: AppDimens.tExtraSmall),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 120,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade100,
                          blurRadius: 2,
                          offset: Offset(4, 4), // Shadow position
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: SvgPicture.asset(
                          AppAssets.info,
                          height: 55,
                          width: 55,
                        )),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'Limit & Charges',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey.shade700,
                                fontWeight: FontWeight.w600,
                                fontSize: AppDimens.tExtraSmall),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
