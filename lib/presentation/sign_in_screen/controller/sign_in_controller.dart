import 'package:sakny/core/app_export.dart';import 'package:sakny/presentation/sign_in_screen/models/sign_in_model.dart';import 'package:flutter/material.dart';class SignInController extends GetxController {TextEditingController phonenumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<SignInModel> signInModelObj = SignInModel().obs;

Rx<bool> isShowPassword = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); phonenumberController.dispose(); passwordController.dispose(); } 
 }
