
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class MyController46 extends GetxController {
  var isListening = false.obs;
  var speechText = 'Press the Mic button and start speaking'.obs;
  late SpeechToText speechToText;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    speechToText = SpeechToText();
  }
  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }

  void listen() async {
    if(!isListening.value){
      bool available = await speechToText.initialize(
        onStatus: (val){},
        onError: (val){},
      );
      if(available){
        isListening.value = true;
        speechToText.listen(
          onResult: (val){
            speechText.value = val.recognizedWords;
          }
        );
      }
    }
    else{
      isListening.value = false;
      speechToText.stop();
      speechText.value = '';
    }
  }

}