
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A078_DateRangePicker/my_controller78.dart';
import 'package:intl/intl.dart';

class HomeScreen78 extends StatelessWidget {
  MyController78 controller = MyController78();

  HomeScreen78({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Date Range picker'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text("Start : ${DateFormat("dd-MM-yyyy").format(controller.dateRange.value.start)}", style: const TextStyle(fontSize: 25,),),),
            Obx(() => Text("End : ${DateFormat("dd-MM-yyyy").format(controller.dateRange.value.end)}", style: const TextStyle(fontSize: 25,),),),
            ElevatedButton(onPressed: ()=> controller.chooseDateRangePicker(), child: const Text('Click Here'),),
          ],
        ),
      ),
    );
  }
}






// Show error due null check operator used null value & also video ot completed
