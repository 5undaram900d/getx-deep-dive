
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A100_AutoRedirectToLogin/Enter/enter_controller100.dart';

class EnterScreen100 extends StatelessWidget {
  EnterController100 controller = Get.put(EnterController100());

  EnterScreen100({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Enter Screen'), centerTitle: true,),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(controller.name, style: const TextStyle(fontSize: 20,),),
              ElevatedButton(onPressed: controller.logout(), child: const Text('Logout'),),
            ],
          ),
        ),
      ),
    );
  }
}
