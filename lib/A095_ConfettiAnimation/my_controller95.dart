
import 'package:confetti/confetti.dart';
import 'package:get/get.dart';

class MyController95 extends GetxController{
  var isPlaying = false.obs;
  late ConfettiController confettiController;

  @override
  void onInit() {
    super.onInit();
    confettiController = ConfettiController();
  }

  @override
  void onClose() {
    confettiController.dispose();
  }

  startConfettiAnimation(){
    if(confettiController.state==ConfettiControllerState.playing){
      isPlaying.value = false;
      confettiController.stop();
    }
    else{
      isPlaying.value = true;
      confettiController.play();
    }
  }

}