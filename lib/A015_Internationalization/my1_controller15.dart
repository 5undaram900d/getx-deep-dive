
import 'dart:ui';

import 'package:get/get.dart';

class My1Controller15 extends GetxController{
  void changeLanguage(var param1, var param2){
    var locale = Locale(param1, param2);
    Get.updateLocale(locale);
  }
}