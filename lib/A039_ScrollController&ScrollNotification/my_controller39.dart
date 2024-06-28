
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController39 extends GetxController {
  var scrollMessage = ''.obs;
  var scrollNotificationMessage = ''.obs;

  late ScrollController scrollController;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController.addListener(() {
      if((scrollController.offset >= scrollController.position.maxScrollExtent) && !scrollController.position.outOfRange) {
        scrollMessage.value = "Reached at bottom";
        debugPrint('bdone');
      }
      if((scrollController.offset <= scrollController.position.minScrollExtent) && !scrollController.position.outOfRange) {
        scrollMessage.value = "Reached at top";
        debugPrint('tdone');
      }
    });
  }

  void scrollUp(){

    scrollController.animateTo(scrollController.offset-50, duration: const Duration(milliseconds: 500), curve: Curves.linear);
    // scrollController.jumpTo(scrollController.offset-50);
  }

  void scrollDown(){
    scrollController.animateTo(scrollController.offset+50, duration: const Duration(milliseconds: 500), curve: Curves.linear);
    // scrollController.jumpTo(scrollController.offset+50);
  }

  void start(){
    scrollNotificationMessage.value = 'Started';
  }

  void updateScroll(){  ///can't use directly update() because it is a predefined method
    scrollNotificationMessage.value = 'Scrolling';
  }

  void end(){
    scrollNotificationMessage.value = 'Ended';
  }

  @override
  void onReady() {
    super.onReady();
  }
}