
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A077_TimePicker/my_controller77.dart';

class HomeScreen77 extends StatelessWidget {
  MyController77 controller = MyController77();

  HomeScreen77({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Time Picker'), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("${controller.selectedTime.value.hour}:${controller.selectedTime.value.minute}", style: const TextStyle(fontSize: 25,),),
            ),
            ElevatedButton(onPressed: ()=> controller.chooseTime(), child: const Text('Select Time'),),
          ],
        ),
      ),
    );
  }
}





// Show error due null check operator used null value & also video ot completed
