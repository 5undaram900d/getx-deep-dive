
import 'package:get/get.dart';

class MyController13 extends GetxController{

  var count = 0;
  void increment(){
    count++;
    update(['txtCount']);
  }

}