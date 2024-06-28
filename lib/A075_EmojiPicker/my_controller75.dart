
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController75 extends GetxController {
  var isEmojiVisible = false.obs;
  FocusNode focusNode = FocusNode();
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    focusNode.addListener(() {
      if(focusNode.hasFocus){
        isEmojiVisible.value = true;
      }
    });
    super.onInit();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    textEditingController.dispose();
  }
}


