
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen6 extends StatelessWidget {
  const HomeScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Get.toNamed('/nextScreen'),
              child: const Text('Next Screen'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () => Get.toNamed('/nextScreen/420'),
              child: const Text('Next Screen with parameter using route pages'),
            ),
            const SizedBox(height: 20,),
            ElevatedButton(onPressed: () => Get.back(), child: const Text('Back to initial Home screen'),),
            const SizedBox(height: 20,),
            Text("My name is ${Get.parameters['name']} \nMy role as a ${Get.parameters['job']}", style: const TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
