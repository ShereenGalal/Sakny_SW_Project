import 'package:sakny/core/app_export.dart';
import 'package:sakny/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
 TextEditingController fullnameController = TextEditingController();

 TextEditingController phonenumberController = TextEditingController();

 TextEditingController passwordController = TextEditingController();

 Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

 Rx<bool> isShowPassword = false.obs;


 @override
 void onReady() {
  //////////////
 final arg=Get.arguments as  SignUpModel;
 /////////////
  super.onReady();
  Get.toNamed(AppRoutes.homeContainerScreen);
 }

 @override
 void onClose() {
  super.onClose();
  fullnameController.dispose();
  phonenumberController.dispose();
  passwordController.dispose();
 }
}

