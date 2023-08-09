import 'package:flutter/material.dart';
import 'package:flutter_initial_proj/app/modules/transfer/views/component/transfer_view_component.dart';
import 'package:flutter_initial_proj/core/extra/app_assets.dart';
import 'package:flutter_initial_proj/core/extra/app_dimens.dart';
import 'package:flutter_initial_proj/core/theme/extra_colors.dart';
import 'package:flutter_initial_proj/global/widget/global_appbar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';
import '../../../../global/global_textfield.dart';
import '../../../../global/widget/global_alert.dart';
import '../controllers/transfer_controller.dart';

class TransferView extends GetView<TransferController> {
  const TransferView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GlobalAppbar.globalAppbar(
            title: Text(
          'Back',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        )),
        body: Padding(
          padding: EdgeInsets.all(
            AppDimens.bodyPadding,
          ),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            child: SvgPicture.asset(AppAssets.flagBan),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'BANGLADESH',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.grey.shade800),
                                ),
                                Text(
                                  'AED 1.00 = BDT 31.00',
                                  style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppDimens.spaceMedium,
                    ),
                    Container(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                        Expanded(
                          child: Container(
                            height: MediaQuery.of(context).size.height * 0.125,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppAssets.flag,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'AED',
                                        style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                    child: TextField(
                                      cursorColor: ExtraColors.PRIMARY_100,
                                      textAlign: TextAlign.center,
                                      controller: controller.inputs['aed'],
                                      onChanged: (value) {
                                        controller.shouldSendByVisible(!value.isEmpty);
                                        controller.inputs['bdt']!.text =
                                            ((double.tryParse("$value") ?? 0.0) *
                                                    controller.aedToBDT)
                                                .toString();
                                      },
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '00.00',
                                          hintStyle: TextStyle(fontSize: 24)),
                                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: ExtraColors.PRIMARY_100),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.arrowRightArrowLeft,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: Get.height * 0.125,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        AppAssets.flagBan,
                                        height: 30,
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'BDT',
                                        style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                                    child: TextField(
                                      cursorColor: ExtraColors.PRIMARY_100,
                                      textAlign: TextAlign.center,
                                      enabled: false,
                                      controller: controller.inputs['bdt'],
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: '00.00',
                                          hintStyle: TextStyle(fontSize: 24)),
                                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ]),
                    ),
                    SizedBox(
                      height: AppDimens.spaceMedium,
                    ),
                    Text(
                      'Receipnts get an extra 2.5% on their transfer',
                      style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                    ),
                    SizedBox(
                      height: AppDimens.spaceMedium,
                    ),
                    Divider(
                      height: 1,
                      color: ExtraColors.PRIMARY_100,
                    ),
                    SizedBox(
                      height: AppDimens.spaceMedium,
                    ),
                    Text(
                      'Send By',
                      style: TextStyle(
                          color: Colors.grey.shade800, fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: AppDimens.spaceMedium,
                    ),
                    Container(
                      height: Get.height * 0.125,
                      child: Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: TransferViewComponent().getSendbyList(controller).toList()

                          // [
                          //   Expanded(
                          //     child: Container(
                          //       height: MediaQuery.of(context).size.height * 0.125,
                          //       decoration: BoxDecoration(
                          //           color: Color(0xffE1136D),
                          //           borderRadius: BorderRadius.circular(12)),
                          //       child: Center(
                          //         child: SvgPicture.asset(
                          //           AppAssets.bkashLogo,
                          //           height: 40,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          //   SizedBox(
                          //     width: 16,
                          //   ),
                          //   Expanded(
                          //     child: Container(
                          //       height: MediaQuery.of(context).size.height * 0.125,
                          //       decoration: BoxDecoration(
                          //           color: Color(0xffED1C24),
                          //           borderRadius: BorderRadius.circular(12)),
                          //       child: Center(
                          //         child: SvgPicture.asset(
                          //           AppAssets.nagad,
                          //           height: 35,
                          //         ),
                          //       ),
                          //     ),
                          //   ),
                          //   SizedBox(
                          //     width: 16,
                          //   ),
                          //   Expanded(
                          //     child: Container(
                          //       height: MediaQuery.of(context).size.height * 0.125,
                          //       decoration: BoxDecoration(
                          //           color: ExtraColors.INFO_500,
                          //           borderRadius: BorderRadius.circular(12)),
                          //       child: Column(
                          //         mainAxisAlignment: MainAxisAlignment.center,
                          //         children: [
                          //           FaIcon(
                          //             FontAwesomeIcons.buildingColumns,
                          //             color: Colors.white,
                          //             size: 40,
                          //           ),
                          //           SizedBox(
                          //             height: AppDimens.spaceSmall,
                          //           ),
                          //           Text('Bank',
                          //               style: TextStyle(
                          //                   color: Colors.white, fontWeight: FontWeight.w600)),
                          //         ],
                          //       ),
                          //     ),
                          //   )

                          // ],
                          )),
                    ),
                    SizedBox(
                      height: AppDimens.spaceLarge,
                    ),
                    Container(
                      height: 50,
                      child: GlobalTextField.view(
                          controller: controller.inputs['phoneNo']!,
                          hint: "Enter Phone Number",
                          onChange: (value) {
                            controller.shouldViewCustomerInfo(value.length > 10);
                          }),
                    ),
                    SizedBox(
                      height: AppDimens.spaceMedium,
                    ),
                    Obx(
                      () => controller.shouldViewCustomerInfo.value
                          ? Container(
                              height: 50,
                              child: GlobalTextField.view(
                                  controller: controller.inputs['name']!,
                                  hint: "Enter Name",
                                  onChange: (value) {
                                    controller.shouldViewName(value.length > 1);
                                  }),
                            )
                          : Container(),
                    ),
                    SizedBox(
                      height: AppDimens.spaceMedium,
                    ),
                    Obx(
                      () => controller.shouldViewCustomerInfo.value
                          ? Container(
                              child: ZoomTapAnimation(
                                onTap: () {
                                  OrderAlert(controller);
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: ExtraColors.PRIMARY_100,
                                    borderRadius: BorderRadius.circular(55),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Transfer',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ));
  }

  OrderAlert(TransferController controller) {
    GlobalAlert.customContentAlert(
        message: "message",
        content: Container(
          height: Get.height - 250,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Receiver Info: ',
                      style: TextStyle(
                          color: ExtraColors.PRIMARY_100,
                          fontSize: AppDimens.tNormal,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: AppDimens.spaceLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Country',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          'Bangladesh',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: AppDimens.tExtraSmall,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transfer by',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          'Bkash',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Account No',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          '01676115478',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transfer Amount',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          'BDT 310',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Incentive (2.5%)',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          'BDT 7.75',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          'BDT 317.75',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1.5,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transfer amount & Charges: ',
                      style: TextStyle(
                          color: ExtraColors.PRIMARY_100,
                          fontSize: AppDimens.tNormal,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: AppDimens.spaceLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transfer Amount',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          'AED 10.00',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: AppDimens.tExtraSmall,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceSmall,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Transaction Feee',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          'AED 0.75',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: AppDimens.tExtraSmall,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceLarge,
                    ),
                    Text(
                      'BDT 10.00',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: AppDimens.tTiny,
                      ),
                    ),
                    SizedBox(
                      height: AppDimens.tTiny,
                    ),
                    Text(
                      'Transfer amount shown is an approxmation may  very based on the compliance and tax regulations of the  receive country',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: AppDimens.tTiny,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1.5,
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Promotion applied',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: AppDimens.tExtraSmall,
                          ),
                        ),
                        Text(
                          '-AED 0.00',
                          style: TextStyle(
                              color: Colors.red.shade400,
                              fontSize: AppDimens.tExtraSmall,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.spaceExtraLarge,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontWeight: FontWeight.w600,
                            fontSize: AppDimens.tLarge,
                          ),
                        ),
                        Text(
                          'AED 10.75',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: AppDimens.tLarge,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        onTap: () {
          Get.back();
        });
  }
}
