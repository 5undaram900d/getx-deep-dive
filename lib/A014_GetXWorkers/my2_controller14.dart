
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My2Controller14 extends GetxController{
  var count = 0.obs;
  void increment() => count++;

  @override
  void onInit() {
    /// called every time when the value of any variable from the list changes
    everAll([count], (_) => debugPrint(count.string));
  }
}