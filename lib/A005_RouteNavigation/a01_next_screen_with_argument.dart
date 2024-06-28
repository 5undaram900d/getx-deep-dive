
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreenWithArgument extends StatelessWidget {
  const NextScreenWithArgument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Navigated with argument'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Next Screen with argument'),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: const Text('Back to Home'),
            ),
            const SizedBox(height: 20,),
            Text(Get.arguments, style: const TextStyle(fontWeight: FontWeight.bold,),),
          ],
        ),
      ),
    );
  }
}
