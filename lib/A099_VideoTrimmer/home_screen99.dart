
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A099_VideoTrimmer/my_controller99.dart';

class HomeScreen99 extends StatelessWidget {
  MyController99 controller = Get.put(MyController99());

  HomeScreen99({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Video Trimmer'), centerTitle: true,),
        body: Center(
          child: ElevatedButton.icon(
            onPressed: controller.pickVideo,
            icon: const Icon(Icons.upload_file),
            label: const Text('Pick Video'),
          ),
        ),
      ),
    );
  }
}
