

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A008_StateManagementByObxAndCustomClass/student.dart';

class HomeScreen8 extends StatelessWidget {
  const HomeScreen8({super.key});

  @override
  Widget build(BuildContext context) {

    var student1 = Student1();

    /// for making entire class observable
    final student2 = Student2(name: 'Vishwakarma', age: 20).obs;

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('State Management'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('Name is ${student1.name.value}'),),
              const SizedBox(height: 15,),
              ElevatedButton(onPressed: () {
                student1.name.value = student1.name.value.toUpperCase();
              }, child: const Text('Upper Case'),),
              const SizedBox(height: 10,),
              ElevatedButton(onPressed: () {
                student1.name.value = student1.name.value.toLowerCase();
              }, child: const Text('Lower Case'),),

              const SizedBox(height: 20,),

              Obx(() => Text('Name is ${student2.value.name}'),),
              const SizedBox(height: 15,),
              ElevatedButton(
                onPressed: (){
                  student2.update((student2) {
                    student2?.name = student2.name.toString().toUpperCase();
                  });
                },
                child: const Text('Upper Case when complete class observable'),
              ),
              const SizedBox(height: 10,),
              ElevatedButton(
                onPressed: (){
                  student2.update((student2) {
                    student2?.name = student2.name.toString().toLowerCase();
                  });
                },
                child: const Text('Lower Case when complete class observable'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
