
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController78 extends GetxController {
  var dateRange = DateTimeRange(start: DateTime.now(), end: DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 6),).obs;

  chooseDateRangePicker() async {
    DateTimeRange? picked = await showDateRangePicker(
      context: Get.context!,
      initialDateRange: dateRange.value,
      firstDate: DateTime(DateTime.now().year-20),
      lastDate: DateTime(DateTime.now().year+20),
      ///this is optional to change the theme
      builder: (context, child){
        return Theme(data: ThemeData.dark(), child: child!,);
      },
    );

    if(picked!=null && picked!=dateRange.value){
      dateRange.value = picked;
    }
  }
}