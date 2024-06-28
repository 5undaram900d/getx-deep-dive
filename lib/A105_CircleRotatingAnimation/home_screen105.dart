
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A105_CircleRotatingAnimation/my_controller105.dart';

class HomeScreen105 extends StatelessWidget {
  MyController105 controller = Get.put(MyController105());

  HomeScreen105({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Circle Rotating Animation'), centerTitle: true,),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RotationTransition(
                turns: Tween(begin: 0.0, end: 1.0).animate(controller.animationController),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(75),
                    border: Border.all(color: Colors.blue, width: 2,),
                  ),
                  child: const CircleAvatar(backgroundImage: AssetImage('assets/images/logo.png'),),
                ),
              ),

              const SizedBox(height: 20,),

              ElevatedButton(
                onPressed: ()=> controller.startAnimation(),
                child: Obx(()=> Text(controller.isAnimating.value ? 'Stop' : 'Start'),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










