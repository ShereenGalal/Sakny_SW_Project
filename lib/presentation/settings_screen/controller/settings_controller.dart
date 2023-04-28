import 'package:sakny/core/app_export.dart';import 'package:sakny/presentation/settings_screen/models/settings_model.dart';class SettingsController extends GetxController {Rx<SettingsModel> settingsModelObj = SettingsModel().obs;

RxBool isSelectedSwitch = false.obs;

RxBool isSelectedSwitch1 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
