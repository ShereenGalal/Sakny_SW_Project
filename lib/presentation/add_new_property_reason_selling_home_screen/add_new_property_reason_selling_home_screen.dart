import 'controller/add_new_property_reason_selling_home_controller.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:sakny/widgets/app_bar/appbar_subtitle.dart';
import 'package:sakny/widgets/app_bar/custom_app_bar.dart';
import 'package:sakny/widgets/custom_button.dart';
import 'package:sakny/widgets/custom_checkbox.dart';

class AddNewPropertyReasonSellingHomeScreen
    extends GetWidget<AddNewPropertyReasonSellingHomeController> {
 @override
 Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          appBar: CustomAppBar(
              height: getVerticalSize(48),
              leadingWidth: 64,
              leading: AppbarIconbutton1(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 24),
                  onTap: onTapArrowleft8),
              centerTitle: true,
              title: AppbarSubtitle(text: "msg_add_new_propert".tr)),
          body: Container(
              width: double.maxFinite,
              padding: getPadding(left: 24, top: 12, right: 24, bottom: 12),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Padding(
                       padding: getPadding(top: 20),
                       child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                            Padding(
                                padding: getPadding(top: 8, bottom: 4),
                                child: Text("msg_reason_selling".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtManropeSemiBold14Gray900)),
                            CustomButton(
                                height: getVerticalSize(33),
                                width: getHorizontalSize(79),
                                text: "lbl_04_08".tr,
                                fontStyle: ButtonFontStyle
                                    .ManropeSemiBold14WhiteA700_1)
                           ])),
                   Padding(
                       padding: getPadding(top: 16),
                       child: Container(
                           height: getVerticalSize(6),
                           width: getHorizontalSize(327),
                           decoration: BoxDecoration(
                               color: ColorConstant.blueGray50,
                               borderRadius: BorderRadius.circular(
                                   getHorizontalSize(3))),
                           child: ClipRRect(
                               borderRadius: BorderRadius.circular(
                                   getHorizontalSize(3)),
                               child: LinearProgressIndicator(
                                   value: 0.5,
                                   backgroundColor: ColorConstant.blueGray50,
                                   valueColor: AlwaysStoppedAnimation<Color>(
                                       ColorConstant.blue500))))),
                   Padding(
                       padding: getPadding(top: 26),
                       child: Text("msg_why_are_you_sel".tr,
                           overflow: TextOverflow.ellipsis,
                           textAlign: TextAlign.left,
                           style: AppStyle.txtManropeBold18.copyWith(
                               letterSpacing: getHorizontalSize(0.2)))),
                   Obx(() => CustomCheckbox(
                       width: getHorizontalSize(327),
                       text: "msg_upgrading_my_ho".tr,
                       iconSize: getHorizontalSize(20),
                       value: controller.checkbox.value,
                       margin: getMargin(top: 13),
                       variant: CheckboxVariant.OutlineGray300,
                       shape: CheckboxShape.RoundedBorder8,
                       padding: CheckboxPadding.PaddingT14,
                       fontStyle: CheckboxFontStyle.ManropeSemiBold14Gray900,
                       onChange: (value) {
                        controller.checkbox.value = value;
                       })),
                   Obx(() => CustomCheckbox(
                       width: getHorizontalSize(327),
                       text: "msg_selling_seconda".tr,
                       iconSize: getHorizontalSize(20),
                       value: controller.checkbox1.value,
                       margin: getMargin(top: 8),
                       variant: CheckboxVariant.OutlineGray300,
                       shape: CheckboxShape.RoundedBorder8,
                       padding: CheckboxPadding.PaddingT14,
                       fontStyle: CheckboxFontStyle.ManropeSemiBold14Gray900,
                       onChange: (value) {
                        controller.checkbox1.value = value;
                       })),
                   Obx(() => CustomCheckbox(
                       width: getHorizontalSize(327),
                       text: "lbl_relocating".tr,
                       iconSize: getHorizontalSize(20),
                       value: controller.checkbox2.value,
                       margin: getMargin(top: 8),
                       variant: CheckboxVariant.OutlineGray300,
                       shape: CheckboxShape.RoundedBorder8,
                       padding: CheckboxPadding.PaddingT14,
                       fontStyle: CheckboxFontStyle.ManropeSemiBold14Gray900,
                       onChange: (value) {
                        controller.checkbox2.value = value;
                       })),
                   Obx(() => CustomCheckbox(
                       width: getHorizontalSize(327),
                       text: "msg_downsizing_my_h".tr,
                       iconSize: getHorizontalSize(20),
                       value: controller.checkbox3.value,
                       margin: getMargin(top: 8),
                       variant: CheckboxVariant.OutlineGray300,
                       shape: CheckboxShape.RoundedBorder8,
                       padding: CheckboxPadding.PaddingT14,
                       fontStyle: CheckboxFontStyle.ManropeSemiBold14Gray900,
                       onChange: (value) {
                        controller.checkbox3.value = value;
                       })),
                   Obx(() => CustomCheckbox(
                       width: getHorizontalSize(327),
                       text: "lbl_retiring".tr,
                       iconSize: getHorizontalSize(20),
                       value: controller.checkbox4.value,
                       margin: getMargin(top: 8),
                       variant: CheckboxVariant.OutlineGray300,
                       shape: CheckboxShape.RoundedBorder8,
                       padding: CheckboxPadding.PaddingT14,
                       fontStyle: CheckboxFontStyle.ManropeSemiBold14Gray900,
                       onChange: (value) {
                        controller.checkbox4.value = value;
                       })),

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
                       text: "lbl_next".tr,
                       shape: ButtonShape.RoundedBorder10,
                       padding: ButtonPadding.PaddingAll16,
                       fontStyle: ButtonFontStyle.ManropeBold16WhiteA700_1,
                       onTap: onTapNext)
                  ]))));
 }

 onTapNext() {
  Get.toNamed(AppRoutes.addNewPropertyDecsriptionScreen);
 }

 onTapArrowleft8() {
  Get.back();
 }
}
