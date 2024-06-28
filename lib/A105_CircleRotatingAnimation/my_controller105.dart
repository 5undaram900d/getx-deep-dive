
import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class MyController105 extends GetxController with GetSingleTickerProviderStateMixin{
  late AnimationController animationController;
  var isAnimating = false.obs;

  @override
  void onInit() {
    animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 5000),);
    super.onInit();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  startAnimation(){
    if(animationController.isAnimating){
      isAnimating.value = false;
      animationController.stop();
    }
    else{
      isAnimating.value = true;
      animationController.forward();
      animationController.repeat();
    }
  }

}