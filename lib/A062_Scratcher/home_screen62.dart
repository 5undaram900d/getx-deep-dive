
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A062_Scratcher/my_controller62.dart';
import 'package:scratcher/scratcher.dart';

class HomeScreen62 extends StatelessWidget {
  MyController62 controller = MyController62();

  HomeScreen62({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Scratcher'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Scratcher(
                brushSize: 10,
                threshold: 50,
                color: Colors.lightGreenAccent,
                key: controller.scratchKey,
                onChange: (value) {
                  controller.scratchProgress.value = value;
                },
                onThreshold: () {
                  controller.isThresholdReached.value = true;
                },
                child: SizedBox(height: 300, width: 300, child: Image.asset("assets/images/logo.png"),),
              ),
              const SizedBox(height: 10,),
              Obx(
                ()=> Text('Scratch Progress: ${controller.scratchProgress.value.toStringAsFixed(2)}', style: const TextStyle(fontSize: 18),),
              ),
              const SizedBox(height: 10,),
              Obx(
                ()=> controller.isThresholdReached.value
                    ? const Text('Threshold Reached', style: TextStyle(fontSize: 18, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),)
                    : const Text('Threshold not reached'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  controller.scratchKey.currentState?.reset(duration: const Duration(milliseconds: 2000),);
                  controller.isThresholdReached.value = false;
                },
                child: const Text('Reset'),)
            ],
          ),
        ),
      ),
    );
  }
}
