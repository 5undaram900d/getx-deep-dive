

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreenReturnArgument extends StatelessWidget {
  const NextScreenReturnArgument({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Route give back argument'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Give back data = SundaramBackData'),
            const SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                Get.back(result: 'SundaramBackData');
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
