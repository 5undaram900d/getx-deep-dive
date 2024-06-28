
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A086_FlipCardAnimation/my_controller86.dart';

class HomeScreen86 extends StatelessWidget {
  /// by use Get.put onInit method invoked successfully
  MyController86 controller = Get.put(MyController86());

  HomeScreen86({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flip Card'), centerTitle: true,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
              controller: controller.flipCardController,
              flipOnTouch: false,
              front: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                color: Colors.teal,
                child: const Text('Flip Card', style: TextStyle(fontSize: 30, color: Colors.white,),),
              ),
              back: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                color: Colors.deepPurpleAccent,
                child: const Text('Again Flip Card', style: TextStyle(fontSize: 20, color: Colors.white,),),
              ),
            ),
            const SizedBox(height: 10,),
            ElevatedButton(onPressed: ()=> controller.flipCardController.toggleCard(), child: const Text('Toggle'),),
          ],
        ),
      ),
    );
  }
}
