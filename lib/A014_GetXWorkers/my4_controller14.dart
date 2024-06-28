
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My4Controller14 extends GetxController{
  var count = 0.obs;
  void increment() => count++;

  @override
  void onInit() {
    /// called every time when the user stops tying for 1 second
    debounce(count, (_) => debugPrint("When the user stop typing for 1 sec the value of count will be printed"), time: const Duration(seconds: 1));
  }
}