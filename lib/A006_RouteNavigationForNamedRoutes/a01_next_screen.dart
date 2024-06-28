
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen6 extends StatelessWidget {
  const NextScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Next Screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Danger Rating = ${Get.parameters['dangerRate']}', style: const TextStyle(fontWeight: FontWeight.bold),),
            ElevatedButton(onPressed: () => Get.back(), child: const Text('Back to Home screen'),),
          ],
        ),
      ),
    );
  }
}
