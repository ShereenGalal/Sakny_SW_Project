import '../home_search_page/widgets/home_search_item_widget.dart';
import 'controller/home_search_controller.dart';
import 'models/home_search_item_model.dart';
import 'models/home_search_model.dart';
import 'package:flutter/material.dart';
import 'package:sakny/core/app_export.dart';
import 'package:sakny/widgets/app_bar/appbar_iconbutton_2.dart';
import 'package:sakny/widgets/app_bar/custom_app_bar.dart';
import 'package:sakny/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomeSearchPage extends StatelessWidget {
  HomeSearchController controller =
      Get.put(HomeSearchController(HomeSearchModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(76),
                title: CustomTextFormField(
                    width: getHorizontalSize(271),
                    focusNode: FocusNode(),
                    controller: controller.searchController,
                    hintText: "msg_360_stillwater".tr,
                    margin: getMargin(left: 24),
                    variant: TextFormFieldVariant.OutlineBlue500,
                    shape: TextFormFieldShape.CircleBorder24,
                    padding: TextFormFieldPadding.PaddingT13,
                    fontStyle: TextFormFieldFontStyle.ManropeRegular14Gray900,
                    prefix: Container(
                        margin:
                            getMargin(left: 16, top: 12, right: 8, bottom: 12),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgLocation2)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(48)),
                    suffix: Container(
                        margin:
                            getMargin(left: 30, top: 12, right: 16, bottom: 12),
                        child:
                            CustomImageView(svgPath: ImageConstant.imgClose)),
                    suffixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(48))),
                actions: [
                  AppbarIconbutton2(
                      svgPath: ImageConstant.imgMenu,
                      margin: getMargin(left: 8, top: 4, right: 24, bottom: 4))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 12, right: 24, bottom: 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgLocation20x20,
                            height: getSize(20),
                            width: getSize(20),
                            margin: getMargin(bottom: 2)),
                        Padding(
                            padding: getPadding(left: 12, top: 2),
                            child: Text("msg_or_use_my_curre".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtManropeSemiBold14Gray900))
                      ]),
                      Padding(
                          padding: getPadding(top: 31),
                          child: Text("lbl_search_results".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtManropeSemiBold14)),
                      Padding(
                          padding: getPadding(top: 18, right: 78),
                          child: Obx(() => ListView.separated(
                              physics: NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(16));
                              },
                              itemCount: controller.homeSearchModelObj.value
                                  .homeSearchItemList.length,
                              itemBuilder: (context, index) {
                                HomeSearchItemModel model = controller
                                    .homeSearchModelObj
                                    .value
                                    .homeSearchItemList[index];
                                return HomeSearchItemWidget(model,
                                    onTapSearch: onTapSearch);
                              })))
                    ]))));
  }

  onTapSearch() {
    Get.toNamed(AppRoutes.productDetailsScreen);
  }
}
