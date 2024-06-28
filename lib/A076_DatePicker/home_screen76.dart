
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A076_DatePicker/my_controller76.dart';
import 'package:intl/intl.dart';

class HomeScreen76 extends StatelessWidget {
  MyController76 controller = Get.put(MyController76());

  HomeScreen76({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Date Picker'), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(DateFormat("dd-MM-yyyy").format(controller.selectedDate.value).toString(), style: const TextStyle(fontSize: 25,),),
            ),
            ElevatedButton(onPressed: ()=> controller.chooseDate(), child: const Text('Select Date'),),
          ],
        ),
      ),
    );
  }
}




// Show error due null check operator used null value & also video ot completed