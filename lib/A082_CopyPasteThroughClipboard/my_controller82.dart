
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MyController82 extends GetxController {
  TextEditingController textEditingController = TextEditingController();
  var text = ''.obs;

  copyText(String text){
    Clipboard.setData(ClipboardData(text: text),);
  }

  pasteText() async{
    ClipboardData? clipboard = await Clipboard.getData('text/plain');
    text.value = clipboard!.text!;
  }

}