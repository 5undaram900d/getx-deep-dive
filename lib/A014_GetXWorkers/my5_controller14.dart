
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class My5Controller14 extends GetxController{
  var count = 0.obs;
  void increment() => count++;

  @override
  void onInit() {
    /*
    Ignore all changes within 3 second.
    Imagine that the user can earn coins by clicking on something,
    if he clicked 300 coins, using interval,
    you can set a time frame for 3 seconds,
    and even then clicking 300 or a thousand times,
    the maximum he would get in 1 minute would be 20 coins,
    clicking 300 or 1 million times
     */
    interval(count, (_) => debugPrint("Ignore all changes"), time: const Duration(seconds: 3));
  }
}