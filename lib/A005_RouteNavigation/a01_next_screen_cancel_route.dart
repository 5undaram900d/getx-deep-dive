

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreenUnable2Back extends StatelessWidget {
  const NextScreenUnable2Back({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('From here unable to back'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Next Screen unable to back'),
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
