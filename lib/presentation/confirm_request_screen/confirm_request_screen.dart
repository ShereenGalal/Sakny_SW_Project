import 'controller/confirm_request_controller.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/widgets/custom_button.dart';
import 'package:sakny/widgets/custom_icon_button.dart';
import 'package:sakny/presentation/confirm_request_bottom_sheet_bottomsheet/confirm_request_bottom_sheet_bottomsheet.dart';
import 'package:sakny/presentation/confirm_request_bottom_sheet_bottomsheet/controller/confirm_request_bottom_sheet_controller.dart';

class ConfirmRequestScreen extends GetWidget<ConfirmRequestController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 8, right: 24, bottom: 8),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIconButton(
                          height: 40,
                          width: 40,
                          onTap: () {
                            onTapBtnArrowleft();
                          },
                          child: CustomImageView(
                              svgPath: ImageConstant.imgArrowleft)),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 32),
                              padding: getPadding(
                                  left: 23, top: 30, right: 23, bottom: 30),
                              decoration: AppDecoration.fillBlue50061.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomIconButton(
                                        height: 40,
                                        width: 40,
                                        margin: getMargin(top: 1),
                                        variant: IconButtonVariant.FillBlue500,
                                        padding: IconButtonPadding.PaddingAll12,
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCheckmark2)),
                                    Padding(
                                        padding: getPadding(top: 18),
                                        child: Text("msg_request_received".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtManropeBold18
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))),
                                    Container(
                                        width: getHorizontalSize(278),
                                        margin: getMargin(top: 8),
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text:
                                                      "msg_we_re_checking2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .blueGray500,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Manrope',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "msg_mon_april_4_4".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Manrope',
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              TextSpan(
                                                  text: "lbl_to2".tr,
                                                  style: TextStyle(
                                                      color: ColorConstant
                                                          .blueGray500,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Manrope',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: " ",
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Manrope',
                                                      fontWeight:
                                                          FontWeight.w500)),
                                              TextSpan(
                                                  text: "lbl_4_45_pm".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Manrope',
                                                      fontWeight:
                                                          FontWeight.w600)),
                                              TextSpan(
                                                  text: "lbl".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.gray900,
                                                      fontSize: getFontSize(14),
                                                      fontFamily: 'Manrope',
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ]),
                                            textAlign: TextAlign.center))
                                  ]))),
                      Container(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 24, bottom: 5),
                              padding: getPadding(
                                  left: 24, top: 22, right: 24, bottom: 22),
                              decoration: AppDecoration.outlineGray3002
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder10),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        width: getHorizontalSize(261),
                                        margin: getMargin(top: 3, right: 17),
                                        child: Text("msg_associate_capit".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtManropeSemiBold14Gray9001)),
                                    Padding(
                                        padding: getPadding(top: 9),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray300)),
                                    Padding(
                                        padding: getPadding(top: 11),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgBg1,
                                                  height: getSize(48),
                                                  width: getSize(48),
                                                  radius: BorderRadius.circular(
                                                      getHorizontalSize(24)),
                                                  margin: getMargin(bottom: 2)),
                                              Padding(
                                                  padding: getPadding(top: 1),
                                                  child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                            "msg_leslie_alexande"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtManropeBold16
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2))),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Text(
                                                                "msg_rich_capital_pr"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeMedium14Bluegray500))
                                                      ])),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowrightBlueGray500,
                                                  height: getSize(20),
                                                  width: getSize(20),
                                                  margin: getMargin(
                                                      top: 14, bottom: 16))
                                            ]))
                                  ])))
                    ])),
            bottomNavigationBar: Container(
                padding: getPadding(all: 24),
                decoration: AppDecoration.outlineBluegray1000f,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "lbl_done".tr,
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll16,
                          fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1,
                          onTap: onTapDone)
                    ]))));
  }

  onTapBtnArrowleft() {
    Get.back();
  }

  onTapDone() {
    Get.bottomSheet(
      ConfirmRequestBottomSheetBottomsheet(
        Get.put(
          ConfirmRequestBottomSheetController(),
        ),
      ),
      isScrollControlled: true,
    );
  }
}
