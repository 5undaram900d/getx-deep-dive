
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shake/shake.dart';

class MyController87 extends GetxController{
  var color = Colors.teal.obs;
  late ShakeDetector shakeDetector;

  @override
  void onInit() {
    super.onInit();
    shakeDetector = ShakeDetector.autoStart(
      onPhoneShake: (){
        color.value = Colors.primaries[Random().nextInt(Colors.primaries.length)];
      },
    );
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    shakeDetector.stopListening();
  }
}