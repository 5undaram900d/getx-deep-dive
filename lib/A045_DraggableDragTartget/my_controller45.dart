
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController45 extends GetxController{
  List<int> numbers = [1, 2, 3, 4, 5].obs;

  void restartGame()=> numbers.addAll([1, 2, 3, 4, 5]);

  void checkCorrectAnswer(data, int acceptType) {
    if(data%2 == 0){
      if(acceptType==1){
        showSnackbar(title: 'Status', message: "Correct Answer", color: Colors.green,);
      }
      if(acceptType==0){
        showSnackbar(title: 'Status', message: "Incorrect Answer", color: Colors.red,);
      }
      numbers.removeWhere((element) => element==data);
    }
    else if(data%2 != 0){
      if(acceptType==0){
        showSnackbar(title: 'Status', message: "Correct Answer", color: Colors.green,);
      }
      else{
        showSnackbar(title: 'Status', message: "Incorrect Answer", color: Colors.red,);
      }
      numbers.removeWhere((element) => element==data);
    }
  }

  void showSnackbar({required String title, required String message, required Color color}){
    Get.snackbar(title, message, colorText: color, backgroundColor: color.withOpacity(0.2), snackPosition: SnackPosition.BOTTOM,);
  }

  @override
  void onInit() {
    // TODO: implement onInit
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
    super.onClose();
  }
}