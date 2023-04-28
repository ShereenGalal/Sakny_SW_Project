import 'package:sakny/core/app_export.dart';
import 'package:sakny/presentation/edit_profile_screen/models/edit_profile_model.dart';
import 'package:flutter/material.dart';

class EditProfileController extends GetxController {
  TextEditingController fullnameOneController = TextEditingController();

  TextEditingController emailOneController = TextEditingController();

  TextEditingController addressOneController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  Rx<EditProfileModel> editProfileModelObj = EditProfileModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    fullnameOneController.dispose();
    emailOneController.dispose();
    addressOneController.dispose();
    passwordOneController.dispose();
  }
}
