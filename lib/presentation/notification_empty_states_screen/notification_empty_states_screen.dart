import 'controller/notification_empty_states_controller.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:sakny/widgets/app_bar/appbar_subtitle.dart';
import 'package:sakny/widgets/app_bar/custom_app_bar.dart';
import 'package:sakny/widgets/custom_button.dart';

class NotificationEmptyStatesScreen
    extends GetWidget<NotificationEmptyStatesController> {
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
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_notification".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 41, top: 108, right: 41),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgMailnotification,
                          height: getVerticalSize(204),
                          width: getHorizontalSize(255)),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("msg_no_notification".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeExtraBold20.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Container(
                          width: getHorizontalSize(292),
                          margin: getMargin(top: 9),
                          child: Text("msg_no_notification2".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtManrope16Bluegray500.copyWith(
                                  letterSpacing: getHorizontalSize(0.3)))),
                      CustomButton(
                          height: getVerticalSize(45),
                          text: "msg_notifications_s".tr,
                          margin: getMargin(
                              left: 36, top: 21, right: 37, bottom: 5),
                          shape: ButtonShape.RoundedBorder10,
                          padding: ButtonPadding.PaddingAll13,
                          fontStyle: ButtonFontStyle.ManropeBold14WhiteA700,
                          onTap: onTapNotificationssettings)
                    ]))));
  }

  onTapNotificationssettings() {
    Get.toNamed(AppRoutes.notificationScreen);
  }

  onTapArrowleft1() {
    Get.back();
  }
}
