
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController77 extends GetxController{
  var selectedTime = TimeOfDay.now().obs;

  chooseTime() async{
    TimeOfDay? pickedTime = await showTimePicker(context: Get.context!, initialTime: selectedTime.value,);

    if(pickedTime!=null && pickedTime!=selectedTime.value){
      selectedTime.value = pickedTime;
    }
  }

}



