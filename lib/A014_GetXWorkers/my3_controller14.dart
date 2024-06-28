
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My3Controller14 extends GetxController{
  var count = 0.obs;
  void increment() => count++;

  @override
  void onInit() {
    /// called every time when the value of count variable changes
    once(count, (_) => debugPrint(count.string));
  }
}