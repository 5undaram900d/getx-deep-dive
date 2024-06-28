
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A046_SpeechToText/my_controller46.dart';

class HomeScreen46 extends StatelessWidget {
  MyController46 controller = Get.put(MyController46());

  HomeScreen46({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Speech to Text'), centerTitle: true,),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              children: [
                Obx(()=> Text(controller.speechText.value, style: const TextStyle(fontSize: 30),),),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Obx(
          ()=> AvatarGlow(
            child: FloatingActionButton(
              child: Icon(controller.isListening.value ? Icons.mic : Icons.mic_none),
              onPressed: ()=> controller.listen(),
            ),
            endRadius: 90.0,
            animate: controller.isListening.value,
            glowColor: Colors.blue,
            duration: const Duration(milliseconds: 2000),
            repeat: true,
            repeatPauseDuration: const Duration(milliseconds: 100),
          ),
        ),
      ),
    );
  }
}
