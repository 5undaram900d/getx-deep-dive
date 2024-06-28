
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A093_ReviewSlider/my_controller93.dart';
import 'package:reviews_slider/reviews_slider.dart';

class HomeScreen93 extends StatelessWidget {
  MyController93 controller = Get.put(MyController93());

  HomeScreen93({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Review Slider'), centerTitle: true,),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Give me likes as your choice.', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                const SizedBox(height: 20,),
                ReviewSlider(
                  onChange: (int value){
                    controller.selectedValue.value = value;
                  },
                  initialValue: 1,
                  optionStyle: const TextStyle(color: Colors.purpleAccent, fontWeight: FontWeight.bold,),
                ),
                const SizedBox(height: 20,),
                Obx(
                  ()=> Text(
                    controller.selectedValue.value.toString()=="0"
                        ? "Terrible"
                        : controller.selectedValue.toString()=="1"
                          ? "Bad"
                          : controller.selectedValue.toString()=="2"
                            ? "Okay"
                            : controller.selectedValue.toString()=="3"
                              ? "Good"
                              : controller.selectedValue.toString()=="4"
                                ? "Great"
                                : "Terrible",
                    style: const TextStyle(fontSize: 20,),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
