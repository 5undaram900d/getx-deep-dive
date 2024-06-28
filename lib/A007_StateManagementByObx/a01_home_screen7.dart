
/*
State Management are the two type-
  - Reactive State Management
  - Simple State Management


- If we want that every time the value of variable changes then all widgets which uses the must update itself
  then the variable must be reactive or observable and to make it reactive(Rx) .obs is used with variable value.
- To update the widget which uses Rx variable must be placed inside Obx(() => Your widget which uses Rx).
  The widget will only update if and only if the Rx variable value changes.

  other ways of making the variable Rx
  1- using Rx(Type)
  =================================
  initial value is recommended but not mandatory
  final name = RxString('');
  final isLogged = RxBool(false);
  final count = RxInt(0);
  final balance = RxDouble(0.0);
  final items = RxList<String>([]);
  final myMap = RxMap<String, int>({});

  2- use darts Generics, Rx<Type>
  =================================
  final name = Rx<String>('');
  final isLogged = Rx<Bool>(false);
  final count = Rx<Int>(0);
  final balance = Rx<Double>(0.0);
  final number = Rx<Num>(0);
  final items = Rx<List<String>>([]);
  final myMap = Rx<Map<String, int>>({});

  Custom Classes - It can be any class, literally
  final user = Rx<User>();

*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen7 extends StatelessWidget {
  const HomeScreen7({super.key});

  @override
  Widget build(BuildContext context) {

    var count = 0.obs;
    debugPrint('complete rebuild');

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('State Management'),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => Text('Count value is $count'),),
              const SizedBox(height: 20,),
              ElevatedButton(onPressed: () => count++, child: const Text('increment'),),
            ],
          ),
        ),
      ),
    );
  }
}
