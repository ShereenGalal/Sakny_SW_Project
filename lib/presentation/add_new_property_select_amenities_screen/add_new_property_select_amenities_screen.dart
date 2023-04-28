import '../add_new_property_select_amenities_screen/widgets/options_item_widget.dart';
import 'controller/add_new_property_select_amenities_controller.dart';
import 'models/options_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/widgets/app_bar/appbar_iconbutton_1.dart';
import 'package:sakny/widgets/app_bar/appbar_subtitle.dart';
import 'package:sakny/widgets/app_bar/custom_app_bar.dart';
import 'package:sakny/widgets/custom_button.dart';

class AddNewPropertySelectAmenitiesScreen
    extends GetWidget<AddNewPropertySelectAmenitiesController> {
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
                    onTap: onTapArrowleft12),
                centerTitle: true,
                title: AppbarSubtitle(text: "msg_add_new_propert".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 32, right: 24, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: getPadding(top: 6, bottom: 6),
                                child: Text("msg_select_amenities".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtManropeSemiBold14Gray900)),
                            CustomButton(
                                height: getVerticalSize(33),
                                width: getHorizontalSize(79),
                                text: "lbl_08_08".tr,
                                fontStyle: ButtonFontStyle
                                    .ManropeSemiBold14WhiteA700_1)
                          ]),
                      Container(
                          height: getVerticalSize(6),
                          width: getHorizontalSize(327),
                          margin: getMargin(top: 16),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: getHorizontalSize(327),
                                    child: Divider(
                                        height: getVerticalSize(6),
                                        thickness: getVerticalSize(6),
                                        color: ColorConstant.blueGray50))),
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: getHorizontalSize(327),
                                    child: Divider(
                                        height: getVerticalSize(6),
                                        thickness: getVerticalSize(6),
                                        color: ColorConstant.blue500)))
                          ])),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Text("msg_select_amenities".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeBold18.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 15, bottom: 5),
                          child: Wrap(
                              runSpacing: getVerticalSize(5),
                              spacing: getHorizontalSize(5),
                              children: List<Widget>.generate(
                                  controller
                                      .addNewPropertySelectAmenitiesModelObj
                                      .value
                                      .optionsItemList
                                      .length, (index) {
                                OptionsItemModel model = controller
                                    .addNewPropertySelectAmenitiesModelObj
                                    .value
                                    .optionsItemList[index];
                                return OptionsItemWidget(model);
                              })))
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
    Get.toNamed(AppRoutes.addNewPropertyDetailsScreen);
  }

  onTapArrowleft12() {
    Get.back();
  }
}
