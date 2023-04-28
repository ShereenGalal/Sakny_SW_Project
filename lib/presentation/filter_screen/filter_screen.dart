import '../filter_screen/widgets/chipviewhome_item_widget.dart';
import '../filter_screen/widgets/listbeds_item_widget.dart';
import '../filter_screen/widgets/listimg_item_widget.dart';
import '../filter_screen/widgets/options2_item_widget.dart';
import 'controller/filter_controller.dart';
import 'models/chipviewhome_item_model.dart';
import 'models/listbeds_item_model.dart';
import 'models/listimg_item_model.dart';
import 'models/options2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/presentation/home_page/home_page.dart';
import 'package:sakny/presentation/home_search_page/home_search_page.dart';
import 'package:sakny/presentation/message_page/message_page.dart';
import 'package:sakny/presentation/my_home_page/my_home_page.dart';
import 'package:sakny/presentation/profile_page/profile_page.dart';
import 'package:sakny/widgets/app_bar/appbar_iconbutton_3.dart';
import 'package:sakny/widgets/app_bar/appbar_image.dart';
import 'package:sakny/widgets/app_bar/appbar_subtitle_2.dart';
import 'package:sakny/widgets/app_bar/custom_app_bar.dart';
import 'package:sakny/widgets/custom_bottom_bar.dart';
import 'package:sakny/widgets/custom_button.dart';
import 'package:sakny/widgets/custom_drop_down.dart';
import 'package:sakny/widgets/custom_icon_button.dart';

class FilterScreen extends GetWidget<FilterController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(60),
                title: Padding(
                    padding: getPadding(left: 24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AppbarSubtitle2(
                              text: "lbl_location".tr,
                              margin: getMargin(right: 99)),
                          Padding(
                              padding: getPadding(top: 6),
                              child: Row(children: [
                                AppbarImage(
                                    height: getSize(16),
                                    width: getSize(16),
                                    svgPath: ImageConstant.imgLocation,
                                    margin: getMargin(bottom: 3)),
                                CustomDropDown(
                                    width: getHorizontalSize(119),
                                    focusNode: FocusNode(),
                                    icon: Container(
                                        margin: getMargin(left: 6),
                                        child: CustomImageView(
                                            svgPath:
                                                ImageConstant.imgArrowdown)),
                                    hintText: "lbl_hanoi_vietnam".tr,
                                    margin: getMargin(left: 8),
                                    variant: DropDownVariant.None,
                                    fontStyle: DropDownFontStyle
                                        .ManropeSemiBold14Gray900,
                                    items: controller
                                        .filterModelObj.value.dropdownItemList4,
                                    onChanged: (value) {
                                      controller.onSelected4(value);
                                    })
                              ]))
                        ])),
                actions: [
                  AppbarIconbutton3(
                      svgPath: ImageConstant.imgOptions,
                      margin: getMargin(left: 24, top: 10, right: 10)),
                  AppbarIconbutton3(
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 12, top: 10, right: 34))
                ],
                styleType: Style.bgFillGray50),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        height: getVerticalSize(1123),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Padding(
                                  padding: getPadding(left: 24, right: 24),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: getPadding(all: 8),
                                            decoration: AppDecoration
                                                .outlineGray300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder10),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgSearch,
                                                      height: getSize(24),
                                                      width: getSize(24),
                                                      margin: getMargin(
                                                          left: 8,
                                                          top: 8,
                                                          bottom: 8)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 12,
                                                          top: 9,
                                                          bottom: 8),
                                                      child: Text(
                                                          "lbl_search".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtManrope16
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.3)))),
                                                  Spacer(),
                                                  CustomIconButton(
                                                      height: 40,
                                                      width: 40,
                                                      variant: IconButtonVariant
                                                          .FillBlue500,
                                                      shape: IconButtonShape
                                                          .RoundedBorder10,
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgSettings40x40))
                                                ])),
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Obx(() => ListView.separated(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(24));
                                                },
                                                itemCount: controller
                                                    .filterModelObj
                                                    .value
                                                    .listimgItemList
                                                    .length,
                                                itemBuilder: (context, index) {
                                                  ListimgItemModel model =
                                                      controller
                                                              .filterModelObj
                                                              .value
                                                              .listimgItemList[
                                                          index];
                                                  return ListimgItemWidget(
                                                      model);
                                                })))
                                      ]))),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  decoration: AppDecoration.fillGray9007e,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width: double.maxFinite,
                                            child: Container(
                                                margin: getMargin(top: 16),
                                                decoration: AppDecoration
                                                    .fillGray50
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL20),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 8),
                                                              child: SizedBox(
                                                                  width:
                                                                      getHorizontalSize(
                                                                          56),
                                                                  child: Divider(
                                                                      height:
                                                                          getVerticalSize(
                                                                              5),
                                                                      thickness:
                                                                          getVerticalSize(
                                                                              5),
                                                                      color: ColorConstant
                                                                          .blueGray500)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 16),
                                                          child: Row(children: [
                                                            CustomIconButton(
                                                                height: 40,
                                                                width: 40,
                                                                onTap: () {
                                                                  onTapBtnClose();
                                                                },
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgClose40x40)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            95,
                                                                        top: 8,
                                                                        bottom:
                                                                            6),
                                                                child: Text(
                                                                    "lbl_filters"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtManropeExtraBold18
                                                                        .copyWith(
                                                                            letterSpacing:
                                                                                getHorizontalSize(0.2))))
                                                          ])),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 24,
                                                                  top: 32,
                                                                  right: 24),
                                                              padding:
                                                                  getPadding(
                                                                      all: 4),
                                                              decoration: AppDecoration
                                                                  .fillBluegray50
                                                                  .copyWith(
                                                                      borderRadius:
                                                                          BorderRadiusStyle
                                                                              .roundedBorder10),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    CustomButton(
                                                                        height: getVerticalSize(
                                                                            40),
                                                                        width: getHorizontalSize(
                                                                            159),
                                                                        text: "lbl_for_sale"
                                                                            .tr,
                                                                        variant:
                                                                            ButtonVariant
                                                                                .OutlineBluegray40014,
                                                                        shape: ButtonShape
                                                                            .RoundedBorder5,
                                                                        padding:
                                                                            ButtonPadding
                                                                                .PaddingAll12,
                                                                        fontStyle:
                                                                            ButtonFontStyle.ManropeBold14Gray900_1),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                50,
                                                                            bottom:
                                                                                9),
                                                                        child: Text(
                                                                            "lbl_for_rent"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtManropeSemiBold14))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 24,
                                                                      top: 27,
                                                                      right:
                                                                          24),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        "lbl_price_range"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtManropeExtraBold16Gray900
                                                                            .copyWith(letterSpacing: getHorizontalSize(0.2))),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                1),
                                                                        child: Text(
                                                                            "lbl_200_15_000"
                                                                                .tr,
                                                                            overflow:
                                                                                TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtManropeSemiBold14Blue500))
                                                                  ]))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      24),
                                                              width:
                                                                  getHorizontalSize(
                                                                      327),
                                                              margin: getMargin(
                                                                  top: 22),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .bottomCenter,
                                                                        child: Padding(
                                                                            padding:
                                                                                getPadding(bottom: 7),
                                                                            child: SizedBox(width: getHorizontalSize(327), child: Divider(height: getVerticalSize(3), thickness: getVerticalSize(3), color: ColorConstant.gray300)))),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Container(
                                                                                  width: getHorizontalSize(26),
                                                                                  padding: getPadding(left: 3, top: 8, right: 3, bottom: 8),
                                                                                  decoration: AppDecoration.fillBlue500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgArrowleft10x10, height: getSize(10), width: getSize(10)),
                                                                                    CustomImageView(svgPath: ImageConstant.imgArrowrightBlueGray501, height: getSize(10), width: getSize(10))
                                                                                  ])),
                                                                              Padding(padding: getPadding(bottom: 7), child: SizedBox(width: getHorizontalSize(103), child: Divider(height: getVerticalSize(3), thickness: getVerticalSize(3), color: ColorConstant.blue500))),
                                                                              Container(
                                                                                  width: getHorizontalSize(26),
                                                                                  padding: getPadding(left: 3, top: 7, right: 3, bottom: 7),
                                                                                  decoration: AppDecoration.fillBlue500.copyWith(borderRadius: BorderRadiusStyle.roundedBorder5),
                                                                                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgArrowleft10x10, height: getSize(10), width: getSize(10)),
                                                                                    CustomImageView(svgPath: ImageConstant.imgArrowrightBlueGray501, height: getSize(10), width: getSize(10))
                                                                                  ]))
                                                                            ]))
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 25),
                                                          child: Text(
                                                              "lbl_features".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtManropeExtraBold16Gray900
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.2)))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 24,
                                                                      top: 20,
                                                                      right:
                                                                          24),
                                                              child: Obx(() => ListView
                                                                  .separated(
                                                                      physics:
                                                                          NeverScrollableScrollPhysics(),
                                                                      shrinkWrap:
                                                                          true,
                                                                      separatorBuilder:
                                                                          (context,
                                                                              index) {
                                                                        return SizedBox(
                                                                            height:
                                                                                getVerticalSize(16));
                                                                      },
                                                                      itemCount: controller
                                                                          .filterModelObj
                                                                          .value
                                                                          .listbedsItemList
                                                                          .length,
                                                                      itemBuilder:
                                                                          (context,
                                                                              index) {
                                                                        ListbedsItemModel model = controller
                                                                            .filterModelObj
                                                                            .value
                                                                            .listbedsItemList[index];
                                                                        return ListbedsItemWidget(
                                                                            model);
                                                                      })))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 27),
                                                          child: Text(
                                                              "lbl_property_facts"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtManropeExtraBold16Gray900
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.2)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 17),
                                                          child: Text(
                                                              "lbl_square_feet"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtManropeSemiBold14Gray900)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 24,
                                                                      top: 6,
                                                                      right:
                                                                          24),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomDropDown(
                                                                        width: getHorizontalSize(
                                                                            139),
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        icon: Container(
                                                                            margin: getMargin(
                                                                                left:
                                                                                    30,
                                                                                right:
                                                                                    12),
                                                                            child: CustomImageView(
                                                                                svgPath: ImageConstant
                                                                                    .imgArrowdownBlueGray50016x16)),
                                                                        hintText:
                                                                            "lbl_min"
                                                                                .tr,
                                                                        items: controller
                                                                            .filterModelObj
                                                                            .value
                                                                            .dropdownItemList,
                                                                        onChanged:
                                                                            (value) {
                                                                          controller
                                                                              .onSelected(value);
                                                                        }),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgMenu16x16,
                                                                        height: getSize(
                                                                            16),
                                                                        width: getSize(
                                                                            16),
                                                                        margin: getMargin(
                                                                            left:
                                                                                16,
                                                                            top:
                                                                                15,
                                                                            bottom:
                                                                                14)),
                                                                    CustomDropDown(
                                                                        width: getHorizontalSize(
                                                                            139),
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        icon: Container(
                                                                            margin: getMargin(
                                                                                left:
                                                                                    30,
                                                                                right:
                                                                                    12),
                                                                            child: CustomImageView(
                                                                                svgPath: ImageConstant
                                                                                    .imgArrowdownBlueGray50016x16)),
                                                                        hintText:
                                                                            "lbl_max"
                                                                                .tr,
                                                                        margin: getMargin(
                                                                            left:
                                                                                17),
                                                                        items: controller
                                                                            .filterModelObj
                                                                            .value
                                                                            .dropdownItemList1,
                                                                        onChanged:
                                                                            (value) {
                                                                          controller
                                                                              .onSelected1(value);
                                                                        })
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 16),
                                                          child: Text(
                                                              "lbl_lot_size".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtManropeSemiBold14Gray900)),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 24,
                                                                      top: 8,
                                                                      right:
                                                                          24),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    CustomDropDown(
                                                                        width: getHorizontalSize(
                                                                            139),
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        icon: Container(
                                                                            margin: getMargin(
                                                                                left:
                                                                                    30,
                                                                                right:
                                                                                    12),
                                                                            child: CustomImageView(
                                                                                svgPath: ImageConstant
                                                                                    .imgArrowdownBlueGray50016x16)),
                                                                        hintText:
                                                                            "lbl_min"
                                                                                .tr,
                                                                        items: controller
                                                                            .filterModelObj
                                                                            .value
                                                                            .dropdownItemList2,
                                                                        onChanged:
                                                                            (value) {
                                                                          controller
                                                                              .onSelected2(value);
                                                                        }),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgMenu16x16,
                                                                        height: getSize(
                                                                            16),
                                                                        width: getSize(
                                                                            16),
                                                                        margin: getMargin(
                                                                            left:
                                                                                16,
                                                                            top:
                                                                                15,
                                                                            bottom:
                                                                                14)),
                                                                    CustomDropDown(
                                                                        width: getHorizontalSize(
                                                                            139),
                                                                        focusNode:
                                                                            FocusNode(),
                                                                        icon: Container(
                                                                            margin: getMargin(
                                                                                left:
                                                                                    30,
                                                                                right:
                                                                                    12),
                                                                            child: CustomImageView(
                                                                                svgPath: ImageConstant
                                                                                    .imgArrowdownBlueGray50016x16)),
                                                                        hintText:
                                                                            "lbl_max"
                                                                                .tr,
                                                                        margin: getMargin(
                                                                            left:
                                                                                17),
                                                                        items: controller
                                                                            .filterModelObj
                                                                            .value
                                                                            .dropdownItemList3,
                                                                        onChanged:
                                                                            (value) {
                                                                          controller
                                                                              .onSelected3(value);
                                                                        })
                                                                  ]))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 27),
                                                          child: Text(
                                                              "lbl_property_type"
                                                                  .tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtManropeExtraBold16Gray900
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.2)))),
                                                      Align(
                                                          alignment:
                                                              Alignment.center,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 14),
                                                              child: Wrap(
                                                                  runSpacing:
                                                                      getVerticalSize(
                                                                          5),
                                                                  spacing:
                                                                      getHorizontalSize(
                                                                          5),
                                                                  children: List<
                                                                          Widget>.generate(
                                                                      controller
                                                                          .filterModelObj
                                                                          .value
                                                                          .chipviewhomeItemList
                                                                          .length,
                                                                      (index) {
                                                                    ChipviewhomeItemModel
                                                                        model =
                                                                        controller
                                                                            .filterModelObj
                                                                            .value
                                                                            .chipviewhomeItemList[index];
                                                                    return ChipviewhomeItemWidget(
                                                                        model);
                                                                  })))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 25),
                                                          child: Row(children: [
                                                            Text(
                                                                "lbl_amenities"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeExtraBold16Gray900
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgWarning,
                                                                height:
                                                                    getSize(20),
                                                                width:
                                                                    getSize(20),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            26,
                                                                        bottom:
                                                                            1))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 16),
                                                          child: Wrap(
                                                              runSpacing:
                                                                  getVerticalSize(
                                                                      5),
                                                              spacing:
                                                                  getHorizontalSize(
                                                                      5),
                                                              children: List<
                                                                      Widget>.generate(
                                                                  controller
                                                                      .filterModelObj
                                                                      .value
                                                                      .options2ItemList
                                                                      .length,
                                                                  (index) {
                                                                Options2ItemModel
                                                                    model =
                                                                    controller
                                                                        .filterModelObj
                                                                        .value
                                                                        .options2ItemList[index];
                                                                return Options2ItemWidget(
                                                                    model);
                                                              }))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 24,
                                                              top: 16),
                                                          child: Row(children: [
                                                            Text(
                                                                "lbl_see_more"
                                                                    .tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtManropeBold14Blue500
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowright16x16,
                                                                height:
                                                                    getSize(16),
                                                                width:
                                                                    getSize(16),
                                                                margin:
                                                                    getMargin(
                                                                        left: 8,
                                                                        top: 1,
                                                                        bottom:
                                                                            2))
                                                          ])),
                                                      Container(
                                                          width:
                                                              double.maxFinite,
                                                          margin: getMargin(
                                                              top: 24),
                                                          padding: getPadding(
                                                              all: 24),
                                                          decoration: AppDecoration
                                                              .outlineBluegray1000f,
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                    child: CustomButton(
                                                                        height: getVerticalSize(
                                                                            56),
                                                                        text: "lbl_reset"
                                                                            .tr,
                                                                        margin: getMargin(
                                                                            right:
                                                                                7),
                                                                        variant:
                                                                            ButtonVariant
                                                                                .OutlineBlue500_2,
                                                                        shape: ButtonShape
                                                                            .RoundedBorder10,
                                                                        padding:
                                                                            ButtonPadding
                                                                                .PaddingAll16,
                                                                        fontStyle:
                                                                            ButtonFontStyle.ManropeBold16Blue500_1)),
                                                                Expanded(
                                                                    child: CustomButton(
                                                                        height: getVerticalSize(
                                                                            56),
                                                                        text: "lbl_apply"
                                                                            .tr,
                                                                        margin: getMargin(
                                                                            left:
                                                                                7),
                                                                        shape: ButtonShape
                                                                            .RoundedBorder10,
                                                                        padding:
                                                                            ButtonPadding
                                                                                .PaddingAll16,
                                                                        fontStyle:
                                                                            ButtonFontStyle.ManropeBold16WhiteA700_1))
                                                              ]))
                                                    ])))
                                      ])))
                        ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Message:
        return AppRoutes.messagePage;
      case BottomBarEnum.Discover:
        return AppRoutes.homeSearchPage;
      case BottomBarEnum.Myhome:
        return AppRoutes.myHomePage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage();
      case AppRoutes.messagePage:
        return MessagePage();
      case AppRoutes.homeSearchPage:
        return HomeSearchPage();
      case AppRoutes.myHomePage:
        return MyHomePage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }

  onTapBtnClose() {
    Get.back();
  }
}
