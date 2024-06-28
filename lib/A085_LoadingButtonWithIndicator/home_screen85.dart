
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A085_LoadingButtonWithIndicator/my_controller85.dart';

class HomeScreen85 extends StatelessWidget {
  MyController85 controller = MyController85();

  HomeScreen85({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Loading Button Indicator'), centerTitle: true,),
      body: Center(
        child: Obx(
          ()=> ElevatedButton.icon(
            onPressed: controller.isLoading.value ? null : ()=>controller.uploadFile(),
            icon: controller.isLoading.value ? const CircularProgressIndicator() : const Icon(Icons.upload),
            label: Text(controller.isLoading.value ? 'Processing' : 'Upload'),
          ),
        ),
      ),
    );
  }
}
