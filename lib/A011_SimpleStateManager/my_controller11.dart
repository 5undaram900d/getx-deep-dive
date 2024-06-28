
import 'package:get/get.dart';

class MyController111 extends GetxController{
  var count = 0; /// It is a Simple state management so there is not used .obs because it is Reactive
  void increment(){
    count++;
    update(); /// will update the count variable on UI which uses it
  }
}

class MyController112 extends GetxController{
  var count = 0; /// It is a Simple state management so there is not used .obs because it is Reactive
  void increment(){
    count++;
    update(); /// will update the count variable on UI which uses it
  }
}