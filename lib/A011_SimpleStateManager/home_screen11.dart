
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A011_SimpleStateManager/my_controller11.dart';

class HomeScreen11 extends StatelessWidget {

  MyController112 myController112 = Get.put(MyController112());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Simple State Management'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GetBuilder<MyController111>(
                init: MyController111(),
                builder: ((controller) {
                  return Text('The value is ${controller.count}', style: const TextStyle(fontWeight: FontWeight.bold),);
                }),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () => Get.find<MyController111>().increment(), child: const Text('Increment'),),

              const SizedBox(height: 15,),

              GetBuilder<MyController112>(
                // init: MyController112(),
                builder: ((controller) {
                  return Text('The value is ${myController112.count}', style: const TextStyle(fontWeight: FontWeight.bold),);
                }),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () => myController112.increment(), child: const Text('Increment'),),
            ],
          ),
        ),
      ),
    );
  }
}
