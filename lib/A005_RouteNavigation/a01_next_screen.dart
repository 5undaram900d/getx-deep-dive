
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Navigated to'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Next Screen'),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.back();
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
