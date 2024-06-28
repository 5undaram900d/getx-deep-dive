
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A106_SelectMultipleItemInListView/my_controller106.dart';

class HomeScreen106 extends StatelessWidget {
  MyController106 controller = Get.put(MyController106());

  HomeScreen106({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Select Multiple Item In ListView'), centerTitle: true,),
        body: ListView.builder(
          itemCount: controller.list.length,
          itemBuilder: (context, index){
            return Obx(
              ()=> GestureDetector(
                onTap: (){
                  controller.list[index].isSelected.value = !controller.list[index].isSelected.value;
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(top: 4, bottom: 8),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: controller.list[index].isSelected.value ? Colors.green[200] : Colors.white,
                  ),
                  child: Text(controller.list[index].name),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
