
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A080_NumberPicker/my_controller80.dart';
import 'package:numberpicker/numberpicker.dart';

class HomeScreen80 extends StatelessWidget {
  MyController80 controller = MyController80();

  HomeScreen80({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Number Picker'), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              ()=> NumberPicker(
                minValue: 18,
                maxValue: 100,
                value: controller.currentValue.value,
                onChanged: (value){
                  controller.currentValue.value = value;
                },
                selectedTextStyle: const TextStyle(fontSize: 30, color: Colors.teal,),
                axis: Axis.horizontal,        /// by default = vertical
              ),
            ),
            const SizedBox(height: 10,),
            Obx(()=> Text('Current Value : ${controller.currentValue.value}', style: const TextStyle(fontSize: 30,),),),
          ],
        ),
      ),
    );
  }
}
