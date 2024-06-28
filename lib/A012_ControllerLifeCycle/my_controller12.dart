
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController12 extends GetxController {
  var count = 0;
  void increment() async{
    await Future<int>.delayed(const Duration(seconds: 5));
    count++;
    update();
  }

  void cleanUpTask() {
    debugPrint("Clean up task");
  }

  /// Better Approach
  @override
  void onInit() {
    debugPrint('Init Called');
    super.onInit();
  }

  @override
  void onClose() {
    debugPrint("Closed");
    super.onClose();
  }

}