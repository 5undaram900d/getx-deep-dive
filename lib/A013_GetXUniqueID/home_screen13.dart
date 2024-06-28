
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A013_GetXUniqueID/my_controller13.dart';

class HomeScreen13 extends StatelessWidget {

  MyController13 myController13 = Get.put(MyController13());

  HomeScreen13({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('GetX by unique ID'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController13>(
                id: "txtCount",
                builder: ((controller) {
                  return Text("The value is ${controller.count}", style: const TextStyle(fontWeight: FontWeight.bold),);
                }),
              ),
              const SizedBox(height: 10,),
              GetBuilder<MyController13>(
                builder: ((controller) {
                  return Text("The value is ${controller.count}", style: const TextStyle(fontWeight: FontWeight.bold),);
                }),
              ),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed: () => myController13.increment(), child: const Text('Increment'),),
            ],
          ),
        ),
      ),
    );
  }
}
