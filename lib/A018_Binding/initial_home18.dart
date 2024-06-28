
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A018_Binding/initial_home_controller18.dart';

class InitialHome18 extends StatelessWidget {
  const InitialHome18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Initial Home'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text('The value is ${Get.find<InitialHomeController18>().count}', style: const TextStyle(fontSize: 25),),),
            ElevatedButton(onPressed: ()=> Get.find<InitialHomeController18>().increment(), child: const Text('Increment'),),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: ()=> Get.back(), child: const Text('Back'),),
          ],
        ),
      ),
    );
  }
}
