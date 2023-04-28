import '../past_tours_screen/widgets/past_tours_item_widget.dart';
import 'controller/past_tours_controller.dart';
import 'models/past_tours_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:sakny/widgets/app_bar/appbar_subtitle.dart';
import 'package:sakny/widgets/app_bar/custom_app_bar.dart';

class PastToursScreen extends GetWidget<PastToursController> {
 @override
 Widget build(BuildContext context) {
  return SafeArea(
      child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          appBar: CustomAppBar(
              height: getVerticalSize(25),
              leadingWidth: 64,
              leading: AppbarIconbutton1(
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 24),
                  onTap: onTapArrowleft18),
              centerTitle: true,
              title: AppbarSubtitle(text: "lbl_past_tours".tr)),
          body: Container(
              width: double.maxFinite,
              child: Container(
                  width: getHorizontalSize(327),
                  margin: getMargin(left: 24, right: 24),
                  decoration: AppDecoration.fillGray50,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       Obx(() => ListView.separated(
                           physics: NeverScrollableScrollPhysics(),
                           shrinkWrap: true,
                           separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(24));
                           },
                           itemCount: controller.pastToursModelObj.value
                               .pastToursItemList.length,
                           itemBuilder: (context, index) {
                            PastToursItemModel model = controller
                                .pastToursModelObj
                                .value
                                .pastToursItemList[index];
                            return PastToursItemWidget(model);
                           }))
                      ])))));
 }

 onTapArrowleft18() {
  Get.back();
 }
}

