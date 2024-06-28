
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreenWithFullScreenDialog extends StatelessWidget {
  const NextScreenWithFullScreenDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route Navigated to with full screen'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Next Screen with full screen dialog'),
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
