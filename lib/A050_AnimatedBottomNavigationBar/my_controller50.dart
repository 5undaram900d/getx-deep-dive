
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController50 extends GetxController {

  PageController pageController = PageController();
  var currentIndex = 0.obs;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    pageController.dispose();
  }
}