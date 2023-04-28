import 'package:sakny/core/app_export.dart';
import 'package:sakny/presentation/recently_views_screen/models/recently_views_model.dart';

class RecentlyViewsController extends GetxController {
  Rx<RecentlyViewsModel> recentlyViewsModelObj = RecentlyViewsModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
