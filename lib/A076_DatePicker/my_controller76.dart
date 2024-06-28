
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController76 extends GetxController{
  Rx<DateTime> selectedDate = DateTime.now().obs;


  chooseDate() async{

    // selectedDate.value = (await showDatePicker(context: Get.context!, initialDate: selectedDate.value, firstDate: DateTime(2000), lastDate: DateTime(2025),))!;

    DateTime? pickedDate = await showDatePicker(context: Get.context!, initialDate: selectedDate.value, firstDate: DateTime(2000), lastDate: DateTime(2025),);
    if(pickedDate!=null && pickedDate!=selectedDate.value){
      selectedDate.value = pickedDate;
    }
  }
}