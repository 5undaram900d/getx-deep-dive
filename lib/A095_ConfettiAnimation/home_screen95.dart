
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_tut/A095_ConfettiAnimation/my_controller95.dart';

class HomeScreen95 extends StatelessWidget {
  MyController95 controller = Get.put(MyController95());

  HomeScreen95({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          Scaffold(
            appBar: AppBar(title: const Text('Confetti Animation'), centerTitle: true,),
            body: Center(
              child: ElevatedButton(
                onPressed: ()=> controller.startConfettiAnimation(),
                child: Obx(()=> Text(controller.isPlaying.value ? 'Stop' : 'Play',),),
              ),
            ),
          ),
          Center(
            child: ConfettiWidget(
              confettiController: controller.confettiController,
              shouldLoop: true,
              blastDirectionality: BlastDirectionality.explosive,
              gravity: 0.8,
              emissionFrequency: 0.6,
              numberOfParticles: 20,
              colors: const [Colors.red, Colors.green, Colors.purpleAccent],      ///optional
              createParticlePath: (size){
                var path = Path();
                path.addOval(Rect.fromCircle(center: Offset.zero, radius: 20,),);
                return path;
              },
            ),
          ),
        ]
      ),
    );
  }
}
