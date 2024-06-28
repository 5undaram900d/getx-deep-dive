
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A094_RatingDialog/my_controller94.dart';

class HomeScreen94 extends StatelessWidget {
  MyController94 controller = Get.put(MyController94());

  HomeScreen94({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Rating Dialog"), centerTitle: true,),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(()=> Text('Your Rating: ${controller.rating.value}', style: const TextStyle(fontSize: 20),)),
                Obx(()=> Text('Your Comment: ${controller.comment.value}', style: const TextStyle(fontSize: 20),)),
                ElevatedButton(onPressed: ()=> controller.showRatingDialog(), child: const Text('Rating Dialog'),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
