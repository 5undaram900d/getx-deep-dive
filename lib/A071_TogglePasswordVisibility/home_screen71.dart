
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A071_TogglePasswordVisibility/my_controller71.dart';

class HomeScreen71 extends StatelessWidget {
  MyController71 controller = MyController71();

  HomeScreen71({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Password Toggle'), centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Obx(
                ()=> TextField(
                  obscureText: controller.isPasswordHidden.value,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    hintText: 'Password',
                    suffix: InkWell(
                      onTap: ()=> controller.isPasswordHidden.value = !controller.isPasswordHidden.value,
                      child: Icon(controller.isPasswordHidden.value ? Icons.visibility : Icons.visibility_off, color: Colors.grey, size: 20,),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
