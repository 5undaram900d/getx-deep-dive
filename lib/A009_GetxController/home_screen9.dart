
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A009_GetxController/my_controller9.dart';

class HomeScreen9 extends StatelessWidget {

  My1Controller9 myController91 = Get.put(My1Controller9());

  My2Controller9 myController92 = Get.put(My2Controller9());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Getx Controller'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('Name is ${myController91.student91.name}', style: const TextStyle(fontWeight: FontWeight.bold),),),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () => myController91.convertToUpperCase1(), child: const Text('Upper Case'),),

              const SizedBox(height: 15,),

              Obx(() => Text('Name is ${myController92.student92.value.name}', style: const TextStyle(fontWeight: FontWeight.bold),),),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () => myController92.convertToUpperCase2(), child: const Text('Upper Case with full observable'),),
            ],
          ),
        ),
      ),
    );
  }
}








