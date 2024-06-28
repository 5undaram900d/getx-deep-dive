
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A087_PhoneShakeProperty/my_controller87.dart';

class HomeScreen87 extends StatelessWidget {
  MyController87 controller = Get.put(MyController87());

  HomeScreen87({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Obx(
        ()=> Scaffold(
          backgroundColor: controller.color.value,
          appBar: AppBar(
            title: const Text('Color shake on Phone Shake'),
            centerTitle: true,
            backgroundColor: controller.color.value,
          ),
          body: const Center(
            child: Text('Phone Shake', textAlign: TextAlign.center, style: TextStyle(fontSize: 30,),),
          ),
        ),
      ),
    );
  }
}
