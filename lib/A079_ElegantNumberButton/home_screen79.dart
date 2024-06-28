
import 'package:flutter/material.dart';
// import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A079_ElegantNumberButton/my_controller79.dart';

class HomeScreen79 extends StatelessWidget {
  MyController79 controller = MyController79();

  HomeScreen79({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Elegant Number Button'), centerTitle: true,),
      body: Center(
        // child: Obx(
        //   ()=> ElegantNumberButton(
        //     initialValue: controller.defaultValue.value,
        //     minValue: 0,
        //     maxValue: 30,
        //     decimalPlaces: 1,
        //     step: 0.5,
        //     onChanged: (value){
        //       controller.defaultValue.value = value;
        //     },
        //     buttonSizeHeight: 40,
        //     buttonSizeWidth: 40,
        //     color: Colors.teal,
        //     textStyle: const TextStyle(fontSize: 20,),
        //   ),
        // ),
      ),
    );
  }
}





// It completely shows error may be due to outdated of the flutter_elegant_number_button dependencies
