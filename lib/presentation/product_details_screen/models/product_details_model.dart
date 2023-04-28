import 'package:get/get.dart';import 'sliderarrowleft_item_model.dart';import 'listfive_item_model.dart';import 'listdate_item_model.dart';import 'listrectangle4224_item_model.dart';class ProductDetailsModel {RxList<SliderarrowleftItemModel> sliderarrowleftItemList = RxList.generate(1,(index) => SliderarrowleftItemModel());

RxList<ListfiveItemModel> listfiveItemList = RxList.generate(5,(index) => ListfiveItemModel());

RxList<ListdateItemModel> listdateItemList = RxList.generate(5,(index) => ListdateItemModel());

RxList<Listrectangle4224ItemModel> listrectangle4224ItemList = RxList.generate(3,(index) => Listrectangle4224ItemModel());

 }
