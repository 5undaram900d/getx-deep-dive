
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My1Controller14 extends GetxController{
  var count = 0.obs;
  void increment() => count++;

  @override
  void onInit() {
    /// called every time when the value of count variable changes
    ever(count, (_) => debugPrint(count.string));
  }
}