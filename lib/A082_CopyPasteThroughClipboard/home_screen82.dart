
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A082_CopyPasteThroughClipboard/my_controller82.dart';

class HomeScreen82 extends StatelessWidget {
  MyController82 controller = MyController82();

  HomeScreen82({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clipboard'), centerTitle: true,),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: controller.textEditingController,
              ),
              const SizedBox(height: 20,),
              Obx(()=> Text(controller.text.value, style: const TextStyle(fontSize: 30),),),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: ()=> controller.copyText(controller.textEditingController.text), child: const Text('Copy'),),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: ()=> controller.pasteText(), child: const Text('Paste'),),
            ],
          ),
        ),
      ),
    );
  }
}
