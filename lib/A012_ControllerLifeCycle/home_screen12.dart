
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A012_ControllerLifeCycle/my_controller12.dart';

class Homescreen12 extends StatelessWidget {

  MyController12 myController12 = Get.put(MyController12());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Controller Life Cycle'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController12>(
                initState: (data) => myController12.increment(),
                dispose: (_) => myController12.cleanUpTask(),
                builder: ((controller) {
                  return Text('The value is ${controller.count}', style: const TextStyle(fontWeight: FontWeight.bold),);
                }),
              ),

              const SizedBox(height: 20,),

              /// Better Approach
              GetBuilder<MyController12>(
                // initState: (data) => myController12.increment(),
                // dispose: (_) => myController12.cleanUpTask(),
                builder: ((controller) {
                  return Text('The value is ${controller.count}', style: const TextStyle(fontWeight: FontWeight.bold),);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
