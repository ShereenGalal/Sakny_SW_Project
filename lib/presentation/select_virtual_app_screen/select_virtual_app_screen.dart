import '../select_virtual_app_screen/widgets/listwhatsapp_item_widget.dart';
import 'controller/select_virtual_app_controller.dart';
import 'models/listwhatsapp_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:sakny/widgets/app_bar/appbar_subtitle.dart';
import 'package:sakny/widgets/app_bar/custom_app_bar.dart';
import 'package:sakny/widgets/custom_button.dart';

class SelectVirtualAppScreen extends GetWidget<SelectVirtualAppController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(48),
                leadingWidth: 64,
                leading: AppbarIconbutton1(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24),
                    onTap: onTapArrowleft13),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_select_virtual".tr)),
            body: Container(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 10, right: 24),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.selectVirtualAppModelObj
                                  .value.listwhatsappItemList.length,
                              itemBuilder: (context, index) {
                                ListwhatsappItemModel model = controller
                                    .selectVirtualAppModelObj
                                    .value
                                    .listwhatsappItemList[index];
                                return ListwhatsappItemWidget(model);
                              }))),
                      Spacer()
                    ])),
            bottomNavigationBar: Container(
                padding: getPadding(left: 24, top: 10, right: 24),
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
    Get.toNamed(AppRoutes.selectAppAlarmScreen);
  }

  onTapArrowleft13() {
    Get.back();
  }
}
